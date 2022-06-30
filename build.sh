#!/bin/sh

#
# Maintainer: Mahmoud Mohamed (Ozil) <mmsaeed509@gmail.com> , <https://github.com/mmsaeed509>
#

echo ""
echo "######################"
echo "# Making the package #"
echo "######################"
echo ""

makepkg -sc --noconfirm
yes| paru -c
mkdir -p ../x86_64
mv *.pkg.tar.zst ../x86_64

echo ""
echo "########################################"
echo "# Moved the .zst file to x86_64 folder #"
echo "########################################"
echo ""

find . -type d -not -path "." -not -path "./files" -exec sudo rm -r "{}" \;
find . -type f -not -name "build.sh" -not -name "*.install" -not -name PKGBUILD -not -name "*.pkg.tar.zst" -not -name "*.hook" -not -name "exodia-hooks-runner" -delete

echo ""
echo "###########################################"
echo "# Removed all redundant files and folders #"
echo "###########################################"
echo ""
