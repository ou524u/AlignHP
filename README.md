# Aligning Motion Generation with Human Perceptions

Pytorch inplementation of paper: Aligning Motion Generation with Human Perceptions, submitted to NeurIPS2024, d&b track.

## Environment setup
```bash
conda env create -f environment.yml
conda activate mocritic
```



## Dataset & Pretrained Model
Run command
```bash
bash prepare_dataset.sh # download pre-processed datasets
bash prepare_model.sh # download pretrained models
```

You can also get pre-processed datasets at https://drive.google.com/file/d/1H5MAPBIAygGV5HSa2yIftWDdGq4fPEXB/view?usp=drive_link

And get pretrained MotionCritic model at https://drive.google.com/file/d/1vifu1vktjCWDpyPpzGPugzHNalhsaMpq/view?usp=drive_link

Dataset metadata is at https://drive.google.com/file/d/1WnBI8UDCINnv1LHAtsNZJ6QY2tRehUdG/view?usp=drive_link




## Evaluatation

Run command
```bash
python metrics.py
python critic_score.py

```

to reproduces results within the paper.


## Pack your own dataset
Run command
```bash


```




## Training
Run command
```bash
python train.py --gpu_indices 0 --exp_name my_experiment --dataset mdmfull_shuffle --save_latest --lr_decay --big_model
```
to train your own Critic model.


