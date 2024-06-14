# download full annotations, in case you need
cd MotionCritic
cd datasets
gdown https://drive.google.com/uc?id=1TpZ0nVvx2c84rYGmHsdLgNbu8gBwLGkA
gdown https://drive.google.com/uc?id=1mL7aRy2MhrcpAPVNUZ47AVJ-3r8zbN6_
unzip annotations-mdmfull.zip

rm -f annotations-mdmfull.zip


# download full motion files, to pack your own dataset
cd ..
mkdir data
cd data

unzip motion_files.zip
rm -f motion_file.zip


