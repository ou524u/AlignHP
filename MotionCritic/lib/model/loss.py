import torch
def loss_func(reward):
    
    target = torch.zeros(reward.shape[0], dtype=torch.long).to(reward.device)
    loss_list = torch.nn.functional.cross_entropy(reward, target, reduction='none')
    loss = torch.mean(loss_list)
    
    reward_diff = reward[:, 0] - reward[:, 1]
    acc = torch.mean((reward_diff > 0).clone().detach().float())
    
    return loss, loss_list, acc