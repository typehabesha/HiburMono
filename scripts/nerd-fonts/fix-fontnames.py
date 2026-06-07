#!/usr/local/opt/python@3.11/bin/python3.11
#
# This script remvoes the duplicate name entries in Mac Roman encoding,
# which appear to override the Unicode encoded names on OSX
#
import sys
from fontTools import ttLib


if __name__ == "__main__":
        font_from_path = sys.argv[1]
        font_to_path   = sys.argv[2]

        from_font = ttLib.TTFont(font_from_path)
        to_font = ttLib.TTFont(font_from_path)
	# Name ID, Platform ID, Platform Encoding ID, Language ID
	# Platform ID = (Apple)
	# Platform Encoding ID = 0 (Mac Roman)
	# Language ID = 0 (English?)
	# 
        # Name ID: 
	#   1 = Font Family Name
	#   2 = Font Subfamily Name
	#   4 = Full Font Name
	#   5 = Version String
	#   6 = PostScript Name

        name = from_font["name"].getName(1, 1, 0, 0)
        print( "Name: " , name )
        to_font["name"].setName(str(name), 1, 1, 0, 0)
        name = from_font["name"].getName(2, 1, 0, 0)
        to_font["name"].setName(str(name), 2, 1, 0, 0)
        name = from_font["name"].getName(4, 1, 0, 0)
        to_font["name"].setName(str(name), 4, 1, 0, 0)
        name = from_font["name"].getName(5, 1, 0, 0)
        to_font["name"].setName(str(name), 5, 1, 0, 0)
	#
	# Keep both the MacRoman and PostScript name as per: https://learn.microsoft.com/en-us/typography/opentype/spec/recom#name
	#
	# This should be OK since the name is ASCII anyway.
	#
        # font["name"].removeNames(6, 1, 0, 0)
        # namerecord_list = to_font["name"].names

        # list updated name record array contents
        for record in namerecord_list:
             print( record.nameID , ": ", record.string )

        to_font.save( font_to_path )
