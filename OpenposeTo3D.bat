@echo off
rem --- 
rem ---  OpenPose �� json�f�[�^���� 3D�f�[�^�ɕϊ�
rem --- 

rem ---  �J�����g�f�B���N�g�������s��ɕύX
cd /d %~dp0

rem ---  OpenPose��json�f�[�^�f�B���N�g���m�F
set /P OPENPOSE_JSON="OpenPose��json�f�B���N�g���p�X: "
rem --- echo PERSON_IDX�F%OPENPOSE_JSON%

rem ---  �ő�l��
set /P PERSON_IDX="�o�͑Ώېl��INDEX(1�n�܂�): "
rem --- echo PERSON_IDX�F%PERSON_IDX%

rem ---  python ���s
rem --- �ڍׂȃ��O���s�v�ȏꍇ�A--verbose �̌��̐������u2�v�ɐݒ肵�ĉ�����
rem --- �ڍׂȃ��O���K�v�ȏꍇ�A--verbose �̌��̐������u3�v�ɐݒ肵�ĉ�����
python src/openpose_3dpose_sandbox_vmd.py --camera_frame --residual --batch_norm --dropout 0.5 --max_norm --evaluateActionWise --use_sh --epochs 200 --load 4874200 --gif_fps 30 --verbose 2 --openpose %OPENPOSE_JSON% --person_idx %PERSON_IDX%


