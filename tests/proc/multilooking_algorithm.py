from dedop.proc.sar.algorithms import MultilookingAlgorithm
from dedop.proc.sar.surface_location_data import SurfaceLocationData
from dedop.conf import CharacterisationFile, ConstantsFile

from tests.testing import TestDataLoader

import unittest
import numpy as np

class MultilookingAlgorithmTests(unittest.TestCase):
    chd_file = "test_data/common/chd.json"
    cst_file = "test_data/common/cst.json"

    inputs_01 = "test_data/proc/multilooking_algorithm/" \
                  "multilooking_algorithm_01/input/input.txt"
    expected_01 = "test_data/proc/multilooking_algorithm/" \
                  "multilooking_algorithm_01/expected/expected.txt"

    inputs_02 = "test_data/proc/multilooking_algorithm/" \
               "multilooking_algorithm_02/input/input.txt"
    expected_02 = "test_data/proc/multilooking_algorithm/" \
                  "multilooking_algorithm_02/expected/expected.txt"

    def setUp(self):
        self.cst = ConstantsFile(self.cst_file)
        self.chd = CharacterisationFile(self.chd_file)
        self.multilooking_algorithm =\
            MultilookingAlgorithm(self.chd, self.cst)

    def zero_float_assertion(self, expected, actual, tol=1e-4):
        if expected == 0:
            self.assertEqual(expected, actual)
        else:
            rel_err = abs(expected - actual) / expected
            self.assertLess(rel_err, tol)

    def test_multilooking_algorithm_01(self):
        """

        :return:
        """
        expected = TestDataLoader(self.expected_01, delim=' ')
        input_data = TestDataLoader(self.inputs_01, delim=' ')

        self.multilooking_tests(input_data, expected)

    def test_multilooking_algorithm_02(self):
        """

        :return:
        """
        expected = TestDataLoader(self.expected_02, delim=' ')
        input_data = TestDataLoader(self.inputs_02, delim=' ')

        self.multilooking_tests(input_data, expected)

    def multilooking_tests(self, input_data, expected):
        """

        :param input_data:
        :param expected:
        :return:
        """
        zp_fact_range = input_data['zp_fact_range']
        data_stack_size = input_data['data_stack_size']

        input_stack_mask_vector = input_data['stack_mask_vector']
        n_samples_max = self.chd.n_samples_sar * zp_fact_range

        stack_mask = np.reshape(
            input_data['stack_mask'],
            (data_stack_size, n_samples_max)
        )
        beams_masked = np.reshape(
            input_data['beams_masked'],
            (data_stack_size, n_samples_max)
        )

        working_location = SurfaceLocationData(
            self.cst, self.chd,
            stacK_size=data_stack_size,
            beam_angles_surf=input_data['beam_angles_surf'],
            look_angles_surf=input_data['look_angles_surf'],
            pointing_angles_surf=input_data['pointing_angles_surf'],
            doppler_angles_surf=input_data['doppler_angles_surf'],
            stack_mask_vector=input_stack_mask_vector,
            stack_mask=stack_mask,
            beams_masked=beams_masked
        )
        self.multilooking_algorithm(working_location)

        expected_waveform = expected['wfm_ml_sar']
        for sample_index in range(n_samples_max):
            self.assertEqual(
                expected_waveform[sample_index],
                self.multilooking_algorithm.waveform_multilooked[sample_index]
            )
        self.zero_float_assertion(
            expected['stack_skewness'],
            self.multilooking_algorithm.stack_skewness
        )
        self.zero_float_assertion(
            expected['stack_kurtosis'],
            self.multilooking_algorithm.stack_kurtosis
        )
        self.zero_float_assertion(
            expected['stack_std'],
            self.multilooking_algorithm.stack_std
        )
        self.zero_float_assertion(
            expected['stack_width'],
            self.multilooking_algorithm.stack_width
        )
        self.zero_float_assertion(
            expected['stack_look_angle_center'],
            self.multilooking_algorithm.look_angle_center
        )
        self.zero_float_assertion(
            expected['stack_pointing_angle_center'],
            self.multilooking_algorithm.pointing_angle_center
        )
        # look angle
        self.assertEqual(
            expected['start_look_angle'],
            self.multilooking_algorithm.start_look_angle
        )
        self.assertEqual(
            expected['stop_look_angle'],
            self.multilooking_algorithm.stop_look_angle
        )
        # doppler angle
        self.assertEqual(
            expected['start_doppler_angle'],
            self.multilooking_algorithm.start_doppler_angle
        )
        self.assertEqual(
            expected['stop_doppler_angle'],
            self.multilooking_algorithm.stop_doppler_angle
        )
        # pointing angle
        self.assertEqual(
            expected['start_pointing_angle'],
            self.multilooking_algorithm.start_pointing_angle
        )
        self.assertEqual(
            expected['stop_pointing_angle'],
            self.multilooking_algorithm.stop_pointing_angle
        )
        # beams contributing
        self.assertEqual(
            expected['n_beams_contributing'],
            self.multilooking_algorithm.n_beams_contributing
        )
