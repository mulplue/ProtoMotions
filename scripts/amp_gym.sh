# smpl walk
CUDA_VISIBLE_DEVICES=3 python phys_anim/train_agent.py \
+exp=amp \
experiment_name=amp_smpl_walk_gym_3584 \
+robot=smpl \
motion_file=data/motions/smpl_humanoid_walk.npy \
+backbone=isaacgym +opt=wandb num_envs=3584

# smpl path follower
CUDA_VISIBLE_DEVICES=3 python phys_anim/train_agent.py \
+exp=path_follower \
experiment_name=fixed_amp_smpl_path_follower_gym_3072 \
+robot=smpl \
motion_file=data/motions/smpl_humanoid_walk.npy \
+backbone=isaacgym +opt=wandb num_envs=3072

# smpl path following
CUDA_VISIBLE_DEVICES=4 python phys_anim/train_agent.py \
+exp=steering \
experiment_name=fixed_amp_smpl_steering_gym_3072 \
+robot=smpl \
motion_file=data/motions/smpl_humanoid_walk.npy \
+backbone=isaacgym +opt=wandb num_envs=3072