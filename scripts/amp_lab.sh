# smpl walk
CUDA_VISIBLE_DEVICES=0 python phys_anim/train_agent.py \
+exp=amp \
experiment_name=amp_smpl_walk_lab \
+robot=smpl \
motion_file=data/motions/smpl_humanoid_walk.npy \
+backbone=isaaclab +opt=wandb

# smpl path follower
CUDA_VISIBLE_DEVICES=1 python phys_anim/train_agent.py \
+exp=path_follower \
experiment_name=fixed_amp_smpl_path_follower_lab_3584 \
+robot=smpl \
motion_file=data/motions/smpl_humanoid_walk.npy \
+backbone=isaaclab +opt=wandb num_envs=3584

# smpl path following
CUDA_VISIBLE_DEVICES=2 python phys_anim/train_agent.py \
+exp=steering \
experiment_name=fixed_amp_smpl_steering_lab_3584 \
+robot=smpl \
motion_file=data/motions/smpl_humanoid_walk.npy \
+backbone=isaaclab +opt=wandb num_envs=3584