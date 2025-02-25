#!/usr/bin/env bash
python train.py --dataroot database/horse2zebra \
  --model cycle_gan \
  --log_dir logs/cycle_gan/horse2zebra/inception/teacher \
  --netG inception_9blocks \
  --real_stat_A_path real_stat/horse2zebra_A.npz \
  --real_stat_B_path real_stat/horse2zebra_B.npz \
  --batch_size 1 \
  --nepochs 150  --nepochs_decay 150 \
  --num_threads 32 \
  --gpu_ids 1 \
  --norm_affine \
  --norm_affine_D \
  --channels_reduction_factor 6 \
  --kernel_sizes 1 3 5
