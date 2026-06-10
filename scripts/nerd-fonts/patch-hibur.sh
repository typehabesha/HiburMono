#!/bin/bash

fontforge --script geez-patcher --complete --careful FiraMonoNerdFontMono-Regular.otf
fontforge --script geez-patcher --complete --careful JetBrainsMonoNerdFontMono-Regular.ttf
fontforge --script geez-patcher --complete --careful HackNerdFontMono-Regular.ttf
fontforge --script geez-patcher --complete --careful GoogleSansCode-Regular.ttf
fontforge --script geez-patcher --complete --careful UbuntuMonoNerdFontMono-Regular.ttf
#
# fontforge --script font-patcher --complete --careful HiburMono-Regular.ttf

#
# Copy back the starting names (from-to):
#
python fix-fontnames.py FiraMonoNerdFontMono-Regular.otf FiraMonoNerdFontMonoNerdFont-Regular.otf
python fix-fontnames.py HackNerdFontMono-Regular.ttf HackNerdFontMonoNerdFont-Regular.ttf
python fix-fontnames.py JetBrainsMonoNerdFontMono-Regular.ttf JetBrainsMonoNerdFontMonoNerdFont-Regular.ttf
python fix-fontnames.py GoogleSansCode-Regular.ttf GoogleSansCodeNerdFont-Regular.ttf 

# Fix names in HiburMonoNerdFont-Regular.ttf and UbuntuMonoNerdFontMono-Regular.ttf manually.
