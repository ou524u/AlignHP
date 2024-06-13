cd MotionCritic
mkdir datasets
cd datasets
gdown https://drive.google.com/uc?id=1H5MAPBIAygGV5HSa2yIftWDdGq4fPEXB
unzip mlists.zip
rm -f mlists.zip

cd ..
mkdir marked
cd marked
# download our organized annotations.
gdown https://drive.google.com/uc?id=1Lgg_ccVvAfxvH0UF-w3Z5OI2rvdFy53V
unzip annotations-organized.zip
rm -f annotations-organized.zip


# download full annotations, in case you need
gdown https://drive.google.com/uc?id=1TpZ0nVvx2c84rYGmHsdLgNbu8gBwLGkA

