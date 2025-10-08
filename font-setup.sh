#!/bin/sh
set -eu

mkdir -p fonts || exit 1

# Buenard (now under UFL)
mkdir -p fonts/Buenard
curl -fsSL -o fonts/Buenard/Buenard-Regular.ttf \
  "https://raw.githubusercontent.com/google/fonts/main/ofl/buenard/Buenard%5Bwght%5D.ttf"

# Source Sans Pro (using actual Source Sans Pro static fonts)
mkdir -p fonts/SourceSansPro
# Download the Source Sans Pro zip file and extract the fonts we need
cd fonts/SourceSansPro
curl -fsSL -o source-sans-pro.zip "https://www.1001fonts.com/download/source-sans-pro.zip"
unzip -q source-sans-pro.zip
# Copy the static TTF files we need
cp "SourceSansPro-Regular.ttf" "SourceSansPro-Regular.ttf" 2>/dev/null || cp "sourcesanspro-regular.ttf" "SourceSansPro-Regular.ttf" 2>/dev/null || true
cp "SourceSansPro-Bold.ttf" "SourceSansPro-Bold.ttf" 2>/dev/null || cp "sourcesanspro-bold.ttf" "SourceSansPro-Bold.ttf" 2>/dev/null || true
cp "SourceSansPro-Italic.ttf" "SourceSansPro-Italic.ttf" 2>/dev/null || cp "sourcesanspro-italic.ttf" "SourceSansPro-Italic.ttf" 2>/dev/null || true
# Clean up
rm -rf source-sans-pro.zip *.txt *.otf 2>/dev/null || true
cd ../..

# Source Sans 3 (using Lato as alternative - static fonts for better rendering)
mkdir -p fonts/SourceSans3
curl -fsSL -o fonts/SourceSans3/SourceSans3-Regular.ttf \
  "https://raw.githubusercontent.com/google/fonts/main/ofl/lato/Lato-Regular.ttf"
curl -fsSL -o fonts/SourceSans3/SourceSans3-Bold.ttf \
  "https://raw.githubusercontent.com/google/fonts/main/ofl/lato/Lato-Bold.ttf"
curl -fsSL -o fonts/SourceSans3/SourceSans3-Italic.ttf \
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

