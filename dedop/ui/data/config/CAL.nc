CDF       
      n_pulses   @   n_samples_SAR      �   n_samples_SARin             ncdf_filename         !cs_users_characterization_C002.nc      creation_date         31-May-2016 09:15:39   satellite_name        	CryoSat-2      altimeter_name        SIRAL      altimeter_mode        	SAR/SARin      baseline      	BaselineC      version       v2.0   general_description      �This file contains the reference values for CAL1 Pulse-to-Pulse corrections (amplitude and phase)and CAL2 Low Pass Filter corrections for CryoSat-2 SAR and SARin acquisition modes.These reference corrections are valid for the whole mission lifetime due to the stability of the instrument.These reference corrections have been computed by averaging all the corresponding corrections read from BaselineC CAL L1B products between 01/03/2011 and 30/04/2016.         	   cal1_p2p_amplitude_sar                  	long_name         ,CAL1 SAR pulse-to-pulse amplitude correction   units         unitless   scale_factor      >������   source        �Computed by averaging all CAL1 SAR pulse-to-pulse amplitude corrections read from BaselineC CAL1 L1B products between 01/03/2011 and 30/04/2016    comment       �CAL1 Amplitude Pulse-to-Pulse correction to be applied to bursts acquired in SAR mode: the k-th echo in the received burst has to be multiplied by the k-th values of the correction.           t   cal1_p2p_phase_sar                  	long_name         (CAL1 SAR pulse-to-pulse phase correction   units         rad    scale_factor      >������   source        �Computed by averaging all CAL1 SAR pulse-to-pulse phase corrections read from BaselineC CAL1 L1B products between 01/03/2011 and 30/04/2016    comment       �CAL1 Phase Pulse-to-Pulse correction to be applied to bursts acquired in SAR mode: the k-th echo in the received burst has to be multiplied by complex exponential of the k-th values of the correction.        t   cal1_p2p_amplitude_sarin_rx1                	long_name         2CAL1 SARin Rx1 pulse-to-pulse amplitude correction     units         unitless   scale_factor      >������   source        �Computed by averaging all CAL1 SARin Rx1 pulse-to-pulse amplitude corrections read from BaselineC CAL1 L1B products between 01/03/2011 and 30/04/2016      comment       �CAL1 Amplitude Pulse-to-Pulse correction to be applied to bursts acquired by Rx channel 1 in SARin mode: the k-th echo in the received burst has to be multiplied by the k-th values of the correction.         t   cal1_p2p_phase_sarin_rx1                	long_name         .CAL1 SARin Rx1 pulse-to-pulse phase correction     units         rad    scale_factor      >������   source        �Computed by averaging all CAL1 SARin Rx1 pulse-to-pulse phase corrections read from BaselineC CAL1 L1B products between 01/03/2011 and 30/04/2016      comment       �CAL1 Phase Pulse-to-Pulse correction to be applied to bursts acquired by Rx channel 1 in SARin mode: the k-th echo in the received burst has to be multiplied by complex exponential of the k-th values of the correction.          t   cal1_p2p_amplitude_sarin_rx2                	long_name         2CAL1 SARin Rx2 pulse-to-pulse amplitude correction     units         unitless   scale_factor      >������   source        �Computed by averaging all CAL1 SARin Rx1 pulse-to-pulse amplitude corrections read from BaselineC CAL1 L1B products between 01/03/2011 and 30/04/2016      comment       �CAL1 Amplitude Pulse-to-Pulse correction to be applied to bursts acquired by Rx channel 2 in SARin mode: the k-th echo in the received burst has to be multiplied by the k-th values of the correction.         !t   cal1_p2p_phase_sarin_rx2                	long_name         .CAL1 SARin Rx2 pulse-to-pulse phase correction     units         rad    scale_factor      >������   source        �Computed by averaging all CAL1 SARin Rx2 pulse-to-pulse phase corrections read from BaselineC CAL1 L1B products between 01/03/2011 and 30/04/2016      comment       �CAL1 Phase Pulse-to-Pulse correction to be applied to bursts acquired by Rx channel 2 in SARin mode: the k-th echo in the received burst has to be multiplied by complex exponential of the k-th values of the correction.          #t   cal2_lpf_sar               	long_name         7CAL2 Low Pass Filter amplitude correction for SAR mode.    units         unitless   scale_factor      >������   source        zComputed by averaging all CAL2 SAR LPF corrections read from BaselineC CAL2 L1B products between 01/03/2011 and 30/04/2016     comment      aCAL2 LPF amplitude correction to be applied to each echo in the bursts acquired in SAR mode.This correction has to be applied to the Fourier transform of each echo in the acquired bursts.The k-th sample of the Fourier Transform of the echo has to be multiplied by the k-th values of the correction.The echo can go then through Inverse Fourier Transform.           %t   cal2_lpf_sarin_rx1                 	long_name         @CAL2 Low Pass Filter amplitude correction on Rx1 for SARin mode.   units         unitless   scale_factor      >������   source        �Computed by averaging all CAL2 SARin Rx1 LPF corrections read from BaselineC CAL2 L1B products between 01/03/2011 and 30/04/2016   comment      sCAL2 LPF amplitude correction to be applied to each echo in the bursts acquired by Rx channel 1 in SARin mode.This correction has to be applied to the Fourier transform of each echo in the acquired bursts.The k-th sample of the Fourier Transform of the echo has to be multiplied by the k-th values of the correction.The echo can go then through Inverse Fourier Transform.         )t   cal2_lpf_sarin_rx2                 	long_name         @CAL2 Low Pass Filter amplitude correction on Rx2 for SARin mode.   units         unitless   scale_factor      >������   source        �Computed by averaging all CAL2 SARin Rx2 LPF corrections read from BaselineC CAL2 L1B products between 01/03/2011 and 30/04/2016   comment      sCAL2 LPF amplitude correction to be applied to each echo in the bursts acquired by Rx channel 2 in SARin mode.This correction has to be applied to the Fourier transform of each echo in the acquired bursts.The k-th sample of the Fourier Transform of the echo has to be multiplied by the k-th values of the correction.The echo can go then through Inverse Fourier Transform.         9tA,Jk    A,���   A,���   A-��   A-7P@   A-^;�   A-    A-��@   A-���   A-�Ӡ   A-��   A-��    A.]@   A.7�   A.&��   A.4�    A.A�    A.M��   A.YA�   A.c�    A.m�    A.w8�   A.�W�   A.���   A.�@   A.��`   A.�M    A.���   A.�t    A.�.�   A.��    A.���   A.���   A.ͥ    A.�/`   A.�f@   A.ݑ    A.�    A.�^    A.��   A.��   A.�    A.�O@   A.�u@   A/��   A/z    A/	[`   A/    A/�    A/Z@   A/��   A/&�   A/�    A/!��   A/$�    A/'�    A/*�   A/-�    A/0��   A/3x�   A/6    A/8�@   A/;8�   A/=�@           @���`   @�X@   @�7�   @Ӻ �   @��l�   @��`   @ߤÀ   @�xE�   @��$�   @�	c�   @�5�   @�#�   @���    @��5@   @��    @�/�    @�i�   @�` �   @��@   @�Wq    @���    @�>2�   @�|`   @� S�   @�pz    @��>    @�O��   @�t��   @�    @�)�    @��    @����   @���   @�5�   @�W�   @��K�   @�7@   @�̼�   @��(    @�@   @�/Q    @�N��   @�fV�   @���   @�a�   @���`   @��@   @�2`   @��    @�4��   @�[    @�zO    @��   @�g`   @����   @���   @��@   @�(`   @�1��   @�J��   @�V5�   @�oO    @�n@   A,9<    A,���   A,ħ@   A,��`   A-*�   A-R�    A-t    A-���   A-�a@   A-���   A-�)    A-�    A. Š   A.@   A. +`   A..��   A.<    A.H�    A.T�    A._Р   A.j�    A.t��   A.~B�   A.�H`   A.���   A.�
    A.��   A.�s`   A.���   A.��   A.���   A.�N`   A.ɹ@   A.��`   A.��   A.��   A.��   A.�g@   A.�@   A.�   A.�l`   A.�v�   A/ @   A/F�   A/D�   A/G�   A/f    A/J�   A/
`   A/��   A/F    A/"�    A/&    A/)�    A/,�`   A/0    A/3�   A/6&�   A/9$�   A/<�   A/>�@   A/A�@   A/Dj�   A/G"�           @��    @�RE    @��*`   @��e    @��!@   @�j`   @�؀   @�s�    @��`   @�TW`   @�@   @粟    @謱�   @闋�   @��o�   @��`   @�|Z@   @�8F    @��w�   @�i�   @��T�   @�Z�    @��`   @�A�   @��   @�6`   @�0_@   @�P��   @�|��   @𬽠   @���    @�Hݠ   @�z�    @���   @�%�@   @�@   @�    @����   @��`   @�#`   @�5��   @�^ @   @���   @�`    @�ǔ�   @����   @�
Ҁ   @�/(@   @�M`   @�kh`   @󉧀   @�g�   @���    @��Z@   @� �`   @�!�`   @�7-`   @�P�    @�r�   @���   @���   @���@   @�π�   A,'`   A,|��   A,�U�   A,�f`   A-% �   A-M_�   A-o|�   A-�s@   A-���   A-�t�   A-�    A-�T�   A-�g�   A.    A._    A.-
�   A.:��   A.G�`   A.S�@   A._c`   A.j<@   A.t��   A.~I�   A.��@   A.�E`   A.���   A.���   A.�z`   A.��   A.�-`   A.��   A.�ؠ   A.�Q�   A.ѣ�   A.׷    A.��    A.���   A.�a`   A.� �   A.��    A.��    A.�Ҁ   A/`�   A/��   A/
��   A/@   A//�   A//    A/�   A/�    A/"^    A/%��   A/)]@   A/,�    A/0	�   A/3@�   A/6p�   A/9�    A/<�@   A/?��   A/B\`   A/E:`   A/H`   A/J��           ���j`   �Ƣ�   ���J@   @���    @�u�   @�]_�   @��    @���   @� U    @֟�   @�
3    @�:	�   @��`   @��I`   @�>b�   @�Y�@   @�G.�   @��*    @�~@   @�$?@   @�    @�
�`   @�]�   @���   @�E�    @�<    @���`   @�8�@   @�g�   @��t�   @�g�    @���   @�y�    @贛    @���   @�s��   @�ƈ�   @�8V    @�sK�   @�W    @���   @�j�   @�l�    @��`   @��@   @�<��   @�u.�   @��   @��?�   @�/K�   @�h�@   @��   @���   @�'@   @�N�`   @��   @��z@   @��U    @�%	`   @�T�    @�ov�   @�^�   @��j�   A:�    A9��    A9�`   A8r�   A6���   A5�R    A4oh    A3d�`   A2|}�   A1�H@   A1�   A0�t�   A0*��   A/���   A/B�    A.�T�   A.�@   A.�׀   A.�e@   A.��   A.�    A/�    A/9��   A/a�    A/�E�   A/�>    A/��    A/��@   A/�4�   A/���   A/�f@   A/w�    A/QԠ   A//ʠ   A/'`   A.�    A.�/    A.���   A.�Ƞ   A.��    A.��`   A.�H`   A.��    A.�`   A/�@   A/$��   A/G.@   A/g�@   A/�8�   A/�Ԡ   A/��    A/��   A/�٠   A/���   A/���   A/e�   A/c@   A/A�`   A/�@   A.�G�   A.ޥ    A.�a�   A.���   A.�:@   A.��    A.y    A.u�`   A.|	�   A.�1@   A.�6    A.ރ�   A/!��   A/Q�    A/x,�   A/��    A/�Y`   A/�i�   A/���   A/��    A/�L@   A/�q�   A/l��   A/Mq    A/*�    A/�`   A.�]�   A.ӈ�   A.�b�   A.��   A.��    A.��    A.�/    A.��@   A.�s�   A/|    A/=|�   A/_�`   A/��`   A/���   A/�S�   A/��    A/�@   A/ƀ�   A/� �   A/�y�   A/vX�   A/N1�   A/%=    A.���   A.�X    A.̥�   A.���   A.�(`   A/�@   A/]3@   A/��   A08�@   A0��    A1&q�   A1�y    A2� �   A3w��   A4��   A5�a    A6�2�   A8��   A9,�   A9�v@   A7�<�   A7��   A7�N    A7E�   A6�B�   A6r�@   A5��   A5t��   A4�'`   A4e �   A3�K�   A3Z3�   A2�P�   A2m�`   A2 �    A1���   A1;�    A0�V�   A0�2    A0Nw    A0��   A/�<    A/?	�   A.��   A.�I�   A.O�@   A.��   A-�,    A-��   A-���   A-��   A-l�@   A-_�@   A-YL    A-X��   A-Z�`   A-a��   A-l@   A-w��   A-��`   A-���   A-��    A-��@   A-͂�   A-߆    A-�i    A.�@   A.`   A.    A.)�`   A.2�   A.:��   A.AH�   A.C��   A.D7`   A.A�@   A.>��   A.7G`   A.0O�   A.&4�   A.>    A.    A.�`   A-�    A-磠   A-ڱ�   A-��`   A-���   A-�5�   A-��`   A-��@   A-���   A-��   A-�4�   A-��@   A-~v�   A-{�   A-}@   A-��   A-���   A-��@   A-�$�   A-�?    A-���   A-�U    A-��@   A-��   A-�7`   A-��    A-�F�   A-�5�   A.��   A._�   A.'M�   A.3Z`   A.=��   A.Gɀ   A.O�`   A.W��   A.\T�   A._��   A.`v�   A.`|�   A._9�   A.\��   A.U�`   A.O��   A.H�   A.>��   A.4@   A.'�   A.    A.z�   A. �    A-�
�   A-��   A-���   A-�j`   A-��@   A-��   A-���   A-��@   A-���   A-���   A-��    A-�r@   A-�Y`   A-��`   A-��@   A-�J`   A-���   A-�Y�   A-�	�   A-��   A-��    A-��`   A-���   A-���   A-��   A-��   A-��   A.W�   A.�`   A.'@   A.(�    A.3~�   A.=/�   A.H^@   A.O!    A.VS    A.Z��   A._Q    A.` �   A.`�    A._�    A.\�    A.W��   A.S	�   A.KP�   A.C�`   A.:o�   A./�   A.%l�   A.m�   A.�   A. 
�   A-��   A-�    A-�S`   A-�@   A-�X`   A-���   A-��@   A-��   A-���   A-��@   A-���   A-�<�   A-�Z�   A-� �   A-�4    A-��   A-�`   A-�ɠ   A-�Q�   A-�}�   A-��    A-��    A-�;�   A-�R�   A.|@   A.�    A.�`   A.-��   A.;q`   A.G��   A.UO`   A.`�`   A.j	@   A.tf�   A.|,�   A.�y�   A.�S    A.�a@   A.��    A.���   A.���   A.�1�   A.�%@   A.;    A.xb@   A.pD`   A.ga    A.\,    A.Pf�   A.D\�   A.9��   A.,"�   A.T@   A.�`   A. `   A-���   A-�    A-���   A-ܛ�   A-�q    A-ώ    A-Ɏ`   A-Ņ�   A-É`   A-�o@   A-��`   A-�`   A-���   A-̛�   A-��   A-��   A-�    A-�*    A-���   A.�    A.%�   A.��   A.%��   A.3    A.>��   A.J�   A.U*�   A.`�   A.jj    A.q�    A.yU`   A.~��   A.%    A.���   A.�`    A.��    A.� �   A.�b�   A.|f�   A.wM�   A.q9`   A.jJ    A.b��   A.Z^�   A.Q�    A.H�    A.=    A.3_    A.(�    A.F�   A.%�   A./    A-��   A-�v�   A-�J`   A-�8�   A-��   A-���   A-��    A-��    A-̱�   A-̄@   A-�!    A-я�   A-�Z@   A-�@@   A-�5�   A-�.    A-�K    A-�G@   A.    A.��   A.#�    A.1$@   A.>�   A.Kb    A.Xo�   A.d�    A.p`    A.}��   A.���   A.���   A.�1`   A.���   A.�{�   A.�:    A.��   A.�)    A.��    A.�@   A.��@   A.��    A.�v    A.�Q�   A.�ʀ   A.w��   A.m�   A.a`   A.TX    A.F�`   A.;Q�   A.-��   A."!�   A.�    A.
`   A-��    A-�,�   A-�Ԁ   A-�V�   A-�`   A-��   A-�+�   A-؅�   A-��    A-��   A-ܹ    A-Ӟ�   A-ݾ    A-   A-�J�   A.!    A.C    A.!    A.*@   A.7�    A.G{`   A.V�`   A.dӀ   A.t��   A.�a�   A.�_    A.��`   A.�,    A.�9�   A.��`   A.ǲ�   A.��   A.���   A.�(�   A.�Ҁ   A.۝    A.�N�   A.آ�   A.ն�   A.�/�   A.ʛ�   A.�m    A.�v�   A.���   A.���   A.��`   A.�	`   A.���   A.}W@   A.r�   A.i��   A._d    A.W��   A.Q��   A.J�`   A.G��   A.D`   A.Ax    A.?3`   A.B�@   A.F�    A.K�`   A.P�   A.Wb�   A._��   A.i��   A.u�`   A.�V`   A.��   A.���   A.���   A.�=@   A.�F�   A.�G    A.ꨠ   A.�P@   A/B�   A/.@   A/!��   A/,\    A/5D�   A/<��   A/C��   A/HZ�   A/I�`   A/J��   A/H�    A/E:    A/A�    A/:�   A/2B�   A/(n�   A/+�   A/�   A/[�   A.��`   A.���   A.�р   A.���   A.��    A.�t    A.��    A.���   A.��    A.}��   A.u�@   A.m�    A.h�@   A.dr�   A.`a    A._�   A.b�   A.c��   A.i�@   A.n6�   A.x��   A.�g�   A.�j`   A.�_�   A.��@   A.��   A.��@   A.�F�   A.�6�   A.칠   A.��    A/\@   A/7�   A/`   A/&��   A/,��   A/1��   A/5��   A/4l    A/2��   A//N@   A/(Y    A/]    A/�@   A/�   A.�3    A.�
�   A.�|    A.ȸ�   A.���   A.�n    A.�o`   A.���   A.x��   A.k�    A.d`   A._/�   A.\    A.aU�   A.j@   A.xE    A.��   A.��`   A.���   A.�	�   A/0��   A/nk�   A/��   A0    A06`   A0m�@   A0�9`   A0��@   A18��   A1��   A1�@   A2F�    A2���   A3$    A3��`   A4�    A4��    A5��   A5�8    A6��   A6�v    A6�܀   A7Qz�   A7�?�   A7��    A7�ɠ   A7ez�   A7Vq�   A7+i�   A6��@   A6�̠   A6-U    A5�~�   A5?@   A4��   A4=`   A3���   A3>.�   A2�Y    A2S8�   A1禠   A1���   A1%�@   A0�o    A0���   A09�   A/�   A/��    A/0    A.���   A.n��   A.)n    A-��   A-�u�   A-�c�   A-r�   A-Wp�   A-E��   A-8Ԡ   A-1 @   A-.��   A-1�@   A-7π   A-@    A-L    A-Y�    A-h��   A-z�    A-��    A-�D�   A-��@   A-���   A-���   A-�4�   A-�`   A-�S    A-��    A.,    A.�   A.	��   A.
    A.�@   A. �    A-��@   A-��`   A-��   A-ۄ    A-Ϯ`   A-�p�   A-� �   A-��   A-�4`   A-�Ԡ   A-|    A-n�    A-b��   A-X[@   A-N��   A-E    A-?��   A-:Y    A-6�    A-5M�   A-6X    A-8%�   A-<%    A-A�    A-H}`   A-Q]    A-\�    A-f5    A-sn    A-�    A-�Հ   A-�    A-�?`   A-���   A-ǐ�   A-���   A-���   A-�0@   A-��`   A.�   A.�@   A.�    A.��   A.�    A."��   A."}`   A."�@   A. ��   A.�   A.�    A.��   A.��   A-��    A-�	@   A-�s�   A-�S�   A-�x�   A-�9�   A-���   A-���   A-�q@   A-�[�   A-�x@   A-�!�   A-y��   A-s��   A-o�    A-kW�   A-h�    A-h�`   A-h,`   A-iR�   A-m?@   A-s�   A-zF    A-��@   A-��   A-�J    A-��`   A-���   A-�v�   A-�-�   A-��`   A-�`   A-���   A.�    A.�    A.�@   A.'`   A.3>@   A.=0`   A.E8�   A.L,    A.Q�   A.U`@   A.W��   A.Y
�   A.X��   A.U�    A.Q+@   A.J��   A.E(�   A.<��   A.2��   A.(��   A.��   A./@   A.&    A-�	    A-���   A-�M`   A-��`   A-�9    A-�    A-��    A-�{@   A-�U�   A-��    A-�#�   A-�z    A-���   A-���   A-��@   A-���   A-��   A-��    A-���   A-�0�   A-��   A-�z�   A-̟@   A-�X    A-�r�   A-���   A. 5�   A.m    A.d�   A.(�   A.5�    A.A^�   A.Lؠ   A.V/�   A.`>    A.i�   A.n�`   A.t3�   A.x�`   A.z��   A.z<�   A.w��   A.vE�   A.r    A.n�   A.e��   A.\W�   A.T;    A.J�    A.?(�   A.2(`   A.(x�   A.�    A.�   A.�    A-��   A-��   A-���   A-�:�   A-�`@   A-�@   A-���   A-���   A-�3�   A-��`   A-�C�   A-�ʀ   A-��@   A-�{�   A-�@   A-�    A-�    A-�)    A-�|`   A-�(�   A-��    A.	�@   A.V`   A.!��   A.-)    A.;Ѡ   A.H��   A.R��   A.^�    A.g��   A.p{    A.v؀   A.|A�   A.��`   A.���   A.��`   A.��    A.���   A.n�   A.z��   A.ub@   A.n��   A.g=@   A.^��   A.U�   A.LL�   A.D�@   A.7�    A.0    A.%>�   A.��   A.�@   A. D�   A-�Y�   A-�    A-���   A-�    A-��    A-�I@   A-���   A-�@   A-��@   A-�z�   A-�_@   A-�r�   A-�p�   A-��    A-��`   A-ٝ�   A-�Ҡ   A-���   A-��`   A.�@   A.�    A.�    A.&D    A.3<�   A.?[�   A.M�   A.W��   A.a�    A.k?�   A.s�    A.|    A.�F@   A.�c�   A.�[�   A.���   A.�~�   A.� �   A.�{`   A.�Ҡ   A.{*�   A.s�`   A.k�@   A.`��   A.V��   A.K#@   A.=p    A./�    A.$�   A.l�   A.
*`   A-��@   A-��`   A-�D    A-���   A-��@   A-�*`   A-��    A-��   A-�;�   A-���   A-���   A-��   A-��    A-�N�   A-�    A-�`�   A-��   A-�K    A-�W@   A-�L    A-�    A-��`   A.M`   A.�   A.*    A.,T�   A.9W�   A.E8@   A.Q>@   A.]�`   A.h0`   A.p�    A.xU�   A.~��   A.�\�   A.���   A.���   A.��@   A.���   A.���   A.n�   A.y`   A.o�    A.f@   A.\h�   A.PD    A.C��   A.8��   A.,J    A.�    A.5    A.O    A-��    A-�\�   A-ܱ�   A-�/@   A-ǎ�   A-�x�   A-�    A-���   A-�&�   A-�ŀ   A-��   A-�U�   A-��    A-�$    A-�o@   A-�    A-�f`   A-���   A-�I    A-��@   A-��    A-���   A-���   A.    A.�`   A.%�`   A.2�   A.?��   A.I]�   A.S�@   A.\�@   A.c�`   A.i�    A.o    A.r��   A.s�    A.r��   A.p�@   A.l:`   A.fP�   A.`a`   A.VH    A.K�    A.A�    A.5�`   A.'��   A.�`   A.��   A-��@   A-�g�   A-���   A-�ـ   A-Ň�   A-�`�   A-���   A-���   A-�Հ   A-�h`   A-�    A-�o�   A-��`   A-�m�   A-���   A-�;�   A-�.�   A-��`   A-���   A-�.�   A-�L�   A-�Q�   A-Ў@   A-�B�   A-�"�   A-��@   A.��   A.��   A.$��   A.1`   A.=��   A.G�    A.P��   A.V�   A.Z1�   A.]��   A.^p�   A.[0    A.Vʠ   A.P2�   A.GE    A.<�`   A..��   A. �@   A.0�   A. Ԁ   A-�`   A-�I`   A-��    A-�    A-�X`   A-�O    A-�>`   A-���   A-���   A-}0    A-���   A-��    A-�w    A-�    A-�&�   A-��   A.
l�   A.;}    A.v�`   A.���   A/�@   A/gΠ   A/͆�   A0!�@   A0a�    A0��    A0��@   A1NՀ   A1�1�   A2�   A2|��   A2�@   A3g�`   A3�?�   A4c#�   A4��@   A5a�    A5�<    A6Jj�   A6�k@   A6���   A79��   A7]�   