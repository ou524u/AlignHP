""" DropBlock, DropPath
PyTorch implementations of DropBlock and DropPath (Stochastic Depth) regularization layers.
Papers:
DropBlock: A regularization method for convolutional networks (https://arxiv.org/abs/1810.12890)
Deep Networks with Stochastic Depth (https://arxiv.org/abs/1603.09382)
Code:
DropBlock impl inspired by two Tensorflow impl that I liked:
 - https://github.com/tensorflow/tpu/blob/master/models/official/resnet/resnet_model.py#L74
 - https://github.com/clovaai/assembled-cnn/blob/master/nets/blocks.py
Hacked together by / Copyright 2020 Ross Wightman
"""

import torch
import torch.nn as nn
import torch.nn.functional as F

def drop_path(x, drop_prob: float = 0., training: bool = False):
    """Drop paths (Stochastic Depth) per sample (when applied in main path of residual blocks).
    This is the same as the DropConnect impl I created for EfficientNet, etc networks, however,
    the original name is misleading as 'Drop Connect' is a different form of dropout in a separate paper...
    See discussion: https://github.com/tensorflow/tpu/issues/494#issuecomment-532968956 ... I've opted for
    changing the layer and argument names to 'drop path' rather than mix DropConnect as a layer name and use
    'survival rate' as the argument.
    """
    if drop_prob == 0. or not training:
        return x
    keep_prob = 1 - drop_prob
    shape = (x.shape[0],) + (1,) * (x.ndim - 1)  # work with diff dim tensors, not just 2D ConvNets
    random_tensor = keep_prob + torch.rand(shape, dtype=x.dtype, device=x.device)
    random_tensor.floor_()  # binarize
    output = x.div(keep_prob) * random_tensor
    return output


class DropPath(nn.Module):
    """Drop paths (Stochastic Depth) per sample  (when applied in main path of residual blocks).
    """
    def __init__(self, drop_prob=None):
        super(DropPath, self).__init__()
        self.drop_prob = drop_prob

    def forward(self, x):
        return drop_path(x, self.drop_prob, self.training)