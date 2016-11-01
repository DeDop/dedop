import numpy as np
import numexpr as ne
from numpy.linalg import norm
from math import sqrt

from dedop.model import SurfaceData, L1AProcessingData
from ..base_algorithm import BaseAlgorithm
from dedop.util.parameter import Parameter


@Parameter("flag_doppler_range_correction", default_value=True)
@Parameter("flag_slant_range_correction", default_value=True)
@Parameter("flag_window_delay_alignment_method", default_value=0)
class GeometryCorrectionsAlgorithm(BaseAlgorithm):
    """
    Algorithm class for the Geometry Corrections Algorithm
    """
    # TODO: Enable selection of window delay alignment method

    def __call__(self, working_surface_location: SurfaceData, wv_length_ku: float) -> None:
        self.beams_geo_corr = np.zeros(
            (self.n_looks_stack, self.chd.n_samples_sar),
            dtype=complex
        )
        self.slant_range_corrections = np.zeros(
            (self.n_looks_stack,), dtype=np.float64
        )
        self.range_sat_surf = np.zeros(
            (self.n_looks_stack,), dtype=np.float64
        )
        self.doppler_corrections = np.zeros(
            (self.n_looks_stack,), dtype=np.float64
        )
        self.win_delay_corrections = np.zeros(
            (self.n_looks_stack,), dtype=np.float64
        )

        win_delay_ref = working_surface_location.win_delay_surf

        max_stack = min(working_surface_location.data_stack_size, self.n_looks_stack)
        for beam_index in range(0, max_stack):

            stack_burst = working_surface_location.stack_bursts[beam_index]

            self.compute_doppler_correction(
                working_surface_location, stack_burst, beam_index, wv_length_ku
            )
            self.compute_slant_range_correction(
                working_surface_location, stack_burst, beam_index
            )
            self.compute_win_delay_misalignments_correction(
                working_surface_location, stack_burst, beam_index, win_delay_ref
            )
            self.apply_corrections(
                working_surface_location, stack_burst, beam_index
            )

    def compute_doppler_correction(self, working_surface_location: SurfaceData,
                                   stack_burst: L1AProcessingData, beam_index: int, wv_length_ku: float) -> None:
        if not self.flag_doppler_range_correction:
            return

        doppler_range = \
            -self.cst.c / wv_length_ku *\
            norm(stack_burst.vel_sat_sar) *\
            np.cos(working_surface_location.beam_angles_surf[beam_index]) *\
            self.chd.pulse_length / self.chd.bw_ku

        self.doppler_corrections[beam_index] =\
            2 / self.cst.c * doppler_range / working_surface_location.t0_surf[beam_index]

    def compute_slant_range_correction(self, working_surface_location: SurfaceData,
                                       stack_burst: L1AProcessingData, beam_index: int) -> None:
        # isp_orbit_surf_ground_vector = np.matrix([
        #     [stack_burst.x_sar_sat - working_surface_location.x_surf],
        #     [stack_burst.y_sar_sat - working_surface_location.y_surf],
        #     [stack_burst.z_sar_sat - working_surface_location.z_surf]
        # ])
        #
        # self.range_sat_surf[beam_index] = norm(
        #     isp_orbit_surf_ground_vector
        # )
        self.range_sat_surf[beam_index] = sqrt(
            (stack_burst.x_sar_sat - working_surface_location.x_surf) ** 2 +
            (stack_burst.y_sar_sat - working_surface_location.y_surf) ** 2 +
            (stack_burst.z_sar_sat - working_surface_location.z_surf) ** 2
        )
        if not self.flag_slant_range_correction:
            return

        slant_range_correction_time =\
            working_surface_location.win_delay_surf -\
            self.range_sat_surf[beam_index] * 2. / self.cst.c

        self.slant_range_corrections[beam_index] =\
            slant_range_correction_time / working_surface_location.t0_surf[beam_index]

    def compute_win_delay_misalignments_correction(self, working_surface_location: SurfaceData,
                                                   stack_burst: L1AProcessingData, beam_index: int,
                                                   win_delay_ref: float) -> None:
        self.win_delay_corrections[beam_index] =\
            -(win_delay_ref - stack_burst.win_delay_sar_ku) /\
            working_surface_location.t0_surf[beam_index]

    def apply_corrections(self, working_surface_location: SurfaceData, stack_burst: L1AProcessingData,
                          beam_index: int) -> None:
        shift = self.doppler_corrections[beam_index] +\
                self.slant_range_corrections[beam_index] +\
                self.win_delay_corrections[beam_index]

        sample_correction_phase_constant = 2j * self.cst.pi / self.chd.n_samples_sar * shift
        indicies = np.arange(self.chd.n_samples_sar)
        beam = working_surface_location.beams_surf[beam_index, :]

        self.beams_geo_corr[beam_index, :] = ne.evaluate(
            "exp(sample_correction_phase_constant * indicies) * beam"
        )
