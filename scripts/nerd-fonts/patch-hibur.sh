#!/bin/bash

fontforge --script geez-patcher --complete --careful FiraMonoNerdFontMono-Regular.otf
fontforge --script geez-patcher --complete --careful JetBrainsMonoNerdFontMono-Regular.ttf
fontforge --script geez-patcher --complete --careful HackNerdFontMono-Regular.ttf
fontforge --script font-patcher --complete --careful GoogleSansCode-Regular.ttf
fontforge --script geez-patcher --complete --careful GoogleSansCodeNerdFont-Regular.ttf
fontforge --script geez-patcher --complete --careful UbuntuMonoNerdFontMono-Regular.ttf
#
fontforge --script font-patcher --complete --careful HiburMono-Regular.ttf

#
# Fix manually for now:
#

#
# Copy back the starting names (from-to):
#
# python fix-fontnames.py FiraMonoNerdFontMono-Regular.otf FiraMonoNerdFontMonoNerdFont-Regular.otf
# python fix-fontnames.py HackNerdFontMonoNerdFont-Regular.ttf HackNerdFontMonoNerdFont-Regular-Fixed.ttf
# python fix-fontnames.py JetBrainsMonoNerdFontMono-Regular.ttf JetBrainsMonoNerdFontMonoNerdFont-Regular.ttf
# python fix-fontnames.py GoogleSansCodeNerdFont-Regular.ttf GoogleSansCodeNerdFontNerdFont-Regular.ttf 

# FiraMono Nerd Font Mono
# FiraMono Nerd Font Mono Regular
# FiraMonoNFM-Regular
# FiraMono Nerd Font Mono

# JetBrainsMono Nerd Font Mono
# JetBrainsMono NFM Regular
# JetBrainsMonoNFM-Regular
# JetBrainsMono NFM

# Hack Nerd Font Mono
# Hack Nerd Font Mono Regular
# HackNerdFontMono-Regular
# Hack Nerd Font Mono

# GoogleSansCode Nerd Font
# GoogleSansCode Nerd Font
# GoogleSansCodeNF-Regular
# GoogleSansCode Nerd Font

# Fix names in HiburMonoNerdFont-Regular.ttf and UbuntuMonoNerdFontMono-Regular.ttf manually.

# Hibur Mono Nerd Font
# Hibur Mono Nerd Font Regular
# HiburMonoNerdFont-Regular
# Hibur Mono Nerd Font
#
# UbuntuMono Nerd Font Mono
# UbuntuMono Nerd Font Mono
# UbuntuMonoNFM
# UbuntuMono Nerd Font Mono
