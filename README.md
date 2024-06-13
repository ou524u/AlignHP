
```bash
$ tree -L 2
.
├── data
│   └── motions.zip
├── datasets
│   ├── gt
│   ├── mlist_flame_better.pth        
│   ├── mlist_mdmfull_trainshuffle.pth
│   ├── mlist_mdmfull_valshuffle.pth  
│   └── mlists.zip
├── marked
│   ├── flame-better
│   ├── mdma
│   ├── mdma-added
│   ├── mdm-fulleval.json
│   ├── mdmu
│   ├── mdmu-added
│   └── annotations.zip
└── parsedata_mul.py

```

所有动作文件以.npz的形式存在data/下面的motions.zip里。
所有标注产出文件以.json的形式存在marked/下面的annotations.zip里
可以使用parsedata.py将上面二者进行打包，获得可以直接供训练/evaluate过程使用的.pth文件

已经打包好的.pth文件放在datasets里，打包为mlist.zip
它们对应的mark分别是marked/下面的几个文件夹，在这里是按照来源和action class分开文件夹和文件名的。
这几个.pth可以用来直接复现我们的结果，是可以立即使用的。

