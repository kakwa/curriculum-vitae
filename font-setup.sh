#!/bin/sh
set -eu

mkdir -p fonts || exit 1

# Buenard (now under UFL)
mkdir -p fonts/Buenard
curl -fsSL -o fonts/Buenard/Buenard-Regular.ttf \
  "https://raw.githubusercontent.com/google/fonts/main/ofl/buenard/Buenard%5Bwght%5D.ttf"

# Source Sans Pro (using Lato as alternative - has static versions)
mkdir -p fonts/SourceSansPro
curl -fsSL -o fonts/SourceSansPro/SourceSansPro-Regular.ttf \
  "https://raw.githubusercontent.com/google/fonts/main/ofl/lato/Lato-Regular.ttf"
curl -fsSL -o fonts/SourceSansPro/SourceSansPro-Bold.ttf \
  "https://raw.githubusercontent.com/google/fonts/main/ofl/lato/Lato-Bold.ttf"
curl -fsSL -o fonts/SourceSansPro/SourceSansPro-Italic.ttf \
  "https://raw.githubusercontent.com/google/fonts/main/ofl/lato/Lato-Italic.ttf"

# Font Awesome 7 Free + Brands (using desktop version with OTF files)
mkdir -p fonts/FontAwesome
# Download the desktop version and extract OTF files
cd fonts/FontAwesome
curl -fsSL -o fontawesome-7.1.0-desktop.zip \
  https://github.com/FortAwesome/Font-Awesome/releases/download/7.1.0/fontawesome-free-7.1.0-desktop.zip
unzip -q fontawesome-7.1.0-desktop.zip
# Copy OTF files to our fonts directory
cp "fontawesome-free-7.1.0-desktop/otfs/Font Awesome 7 Free-Regular-400.otf" "Font Awesome 7 Free-Regular-400.otf"
cp "fontawesome-free-7.1.0-desktop/otfs/Font Awesome 7 Free-Solid-900.otf" "Font Awesome 7 Free-Solid-900.otf"
cp "fontawesome-free-7.1.0-desktop/otfs/Font Awesome 7 Brands-Regular-400.otf" "Font Awesome 7 Brands-Regular-400.otf"
# Clean up
rm -rf fontawesome-free-7.1.0-desktop fontawesome-7.1.0-desktop.zip
cd ../..

