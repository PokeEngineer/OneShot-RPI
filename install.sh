#!/bin/bash

# Install dependencies
echo Building and installing dependencies...
git clone https://github.com/mathewv/ruby-oneshot.git
cd ruby-oneshot
autoconf
./configure --enable-shared
make
sudo make install
cd ..

# Build and install OneShot
echo Building and installing OneShot...
mkdir ~/OneShot
git clone https://github.com/mathewv/mkxp-oneshot.git
cd Journal_Images
mv *.png ../mkxp-oneshot/journal/linux/image
cd ..
cd mkxp-oneshot
qmake
make
mv oneshot ~/OneShot
mv assets/icon.png ~/OneShot/oneshot.png
cd journal/linux/image
./pixmapper.sh C1.png
./pixmapper.sh C2.png
./pixmapper.sh C3.png
./pixmapper.sh C4.png
./pixmapper.sh C5.png
./pixmapper.sh C6.png
./pixmapper.sh C7.png
./pixmapper.sh DEFAULT.png
./pixmapper.sh FINAL.png
./pixmapper.sh NIKO1.png
./pixmapper.sh NIKO2.png
./pixmapper.sh NIKO3.png
./pixmapper.sh S1.png
./pixmapper.sh S2.png
./pixmapper.sh S3.png
./pixmapper.sh S4.png
./pixmapper.sh SAVE.png
./pixmapper.sh T1.png
./pixmapper.sh T2.png
./pixmapper.sh T3.png
./pixmapper.sh T4.png
./pixmapper.sh T5.png
./pixmapper.sh T6.png
./pixmapper.sh T7.png
./pixmapper.sh T8.png
./pixmapper.sh T9.png
./pixmapper.sh T10.png
./pixmapper.sh T11.png
./pixmapper.sh T12.png
./pixmapper.sh T13.png
./pixmapper.sh T14.png
./pixmapper.sh T15.png
./pixmapper.sh T16.png
cd ../..
qmake
make
mv journal ~/OneShot
cd w32
convert icon.ico icon.png
mv icon-1.png ~/OneShot/journal.png
cd ~/
echo "Done! Put your OneShot data files in ~/OneShot"
