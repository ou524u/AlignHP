# Aligning Motion Generation with Human Perceptions

Pytorch inplementation for paper: Aligning Motion Generation with Human Perceptions, submitted to NeurIPS2024, d&b track.


## Dataset & Pretrained Model
Run command
```python
bash prepare_dataset.sh # download pre-processed datasets
bash prepare_model.sh # download pretrained models
```

You can also get pre-processed datasets at https://drive.google.com/file/d/1H5MAPBIAygGV5HSa2yIftWDdGq4fPEXB/view?usp=drive_link

And get pretrained MotionCritic model at https://drive.google.com/file/d/1vifu1vktjCWDpyPpzGPugzHNalhsaMpq/view?usp=drive_link




## Evaluatation

Run command
```python
python metrics.py
python critic_score.py

```

to reproduces results with the paper.

## Training
Run command
```bash
python train.py --gpu_indices 0 --exp_name my_experiment --dataset mdmfull_shuffle --save_latest --lr_decay --big_model
```
to train your own Critic model.


