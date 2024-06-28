
from critic.load_critic import load_critic
from sample.critic_generate import into_critic
import torch

critic_model = load_critic("critic/exp8_final.pth", 'cpu')
example = torch.load("criexample.pth", map_location='cpu')
# get critic scores calculated. 
critic_scores = critic_model.module.batch_critic(into_critic(example['motion']))
print(f"critic scores are {critic_scores}") # 4.1297 in this case