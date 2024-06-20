# python -m train.direct --exp_name exp0-2 --lr 1e-2 --device 1 &
# python -m train.direct --exp_name exp0-4 --lr 1e-4 --device 2 &
# python -m train.direct --exp_name exp0-5 --lr 1e-5 --device 3 &
# python -m train.direct --exp_name exp0-6 --lr 1e-6 --device 4 &
# python -m train.direct --exp_name exp0-0 --lr 1e-0 --device 5 &
# python -m train.direct --exp_name exp0-1 --lr 1e-1 --device 6 &
# python -m train.direct --exp_name exp0-3 --lr 1e-3 --device 7 &
# python -m train.direct --exp_name exp1-0 --lr 1e1 --device 5 &
# python -m train.direct --exp_name exp2-0 --lr 1e2 --device 6

#  python -m train.direct --exp_name exp-vis --lr 1e1 --device 1, no_comment rendering style
#  python -m train.direct --exp_name expvis-all --lr 1e-3 --batch_size -1



# python -m train.direct --exp_name expsig-4 --lr 1e-4 --device 5 &
# python -m train.direct --exp_name expsig-3 --lr 1e-3 --device 6 &
# python -m train.direct --exp_name expsig-5 --lr 1e-5 --device 7 

# python -m train.direct --exp_name expscale-0-4 --lr 1e-4 --device 5 --scale 1e-0 & python -m train.direct --exp_name expscale-0-3 --lr 1e-3 --device 6 --scale 1e-0 & python -m train.direct --exp_name expscale-0-5 --lr 1e-5 --device 7 --scale 1e-0



# python -m train.direct --exp_name expscale-1-4 --lr 1e-4 --device 3 --scale 1e-1 &
# python -m train.direct --exp_name expscale-1-3 --lr 1e-3 --device 4 --scale 1e-1 &
# python -m train.direct --exp_name expscale-1-5 --lr 1e-5 --device 2 --scale 1e-1 & 


python -m train.direct --exp_name expscale-2-4 --lr 1e-4 --device 1 --scale 1e-2 &
python -m train.direct --exp_name expscale-2-3 --lr 1e-3 --device 2 --scale 1e-2 &
python -m train.direct --exp_name expscale-2-5 --lr 1e-5 --device 3 --scale 1e-2 &
python -m train.direct --exp_name expscale-3-4 --lr 1e-4 --device 4 --scale 1e-3 &
python -m train.direct --exp_name expscale-3-3 --lr 1e-3 --device 5 --scale 1e-3 &
python -m train.direct --exp_name expscale-3-5 --lr 1e-5 --device 6 --scale 1e-3 &
python -m train.direct --exp_name expscale-0-2 --lr 1e-2 --device 7 --scale 1e-0 & 
python -m train.direct --exp_name expscale-1-2 --lr 1e-2 --device 1 --scale 1e-1 & 
python -m train.direct --exp_name expscale-2-2 --lr 1e-2 --device 2 --scale 1e-2 &
python -m train.direct --exp_name expscale-0-1 --lr 1e-1 --device 4 --scale 1e-0 & 
python -m train.direct --exp_name expscale-1-1 --lr 1e-1 --device 5 --scale 1e-1 & 
python -m train.direct --exp_name expscale-2-1 --lr 1e-1 --device 6 --scale 1e-2


# python -m mdm_render.render_batch --gpu_index 0 --folder save/finetuned/ft7-2/step0 --no_comment