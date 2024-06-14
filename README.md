## Aligning Motion Generation with Human Perceptions

This repository contains the PyTorch implementation of the paper "Aligning Motion Generation with Human Perceptions," submitted to NeurIPS 2024, D&B track.

### Getting Started

#### Setup the Environment

```bash
conda env create -f environment.yml
conda activate mocritic
```

#### Task Documentation

- Dataset: [docs/data.md](docs/data.md)

#### Dataset & Pretrained Model

Run the following commands to download the pre-processed datasets and pretrained models:

```bash
bash prepare_dataset.sh # download pre-processed datasets
bash prepare_model.sh # download pretrained models
```

You can also get the pre-processed datasets [here](https://drive.google.com/file/d/1H5MAPBIAygGV5HSa2yIftWDdGq4fPEXB/view?usp=drive_link).

Get the pretrained MotionCritic model [here](https://drive.google.com/file/d/1vifu1vktjCWDpyPpzGPugzHNalhsaMpq/view?usp=drive_link).

Get the metadata for the MotionPercept dataset [here](https://drive.google.com/file/d/1WnBI8UDCINnv1LHAtsNZJ6QY2tRehUdG/view?usp=drive_link).

### Evaluation

Run the following commands to reproduce the results within the paper:

```bash
python metrics.py
python critic_score.py
```

### Pack Your Own Dataset

Run the following commands to obtain the original motion files and annotation results, from which you can pack your own dataset:

```bash
bash prepare_fullannotation.sh
bash prepare_motion.sh
```

You can also get the full annotation results [here](https://drive.google.com/file/d/1TpZ0nVvx2c84rYGmHsdLgNbu8gBwLGkA/view?usp=sharing).

Get the complete motion .npz files [here](https://drive.google.com/file/d/1oM9B1InRkEpKu6-Y5sJ9Z-7DY7hemEpN/view?usp=drive_link).

### Training

Run the following command to train your own critic model:

```bash
python train.py --gpu_indices 0 --exp_name my_experiment --dataset mdmfull_shuffle --save_latest --lr_decay --big_model
```
