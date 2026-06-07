from datetime import datetime
from defcon import Font
from drawbot_skia.drawbot import *
from drawbot_skia.document import PDFDocument
import os

prfx = str(datetime.now()).split('.')[0].replace(":", "-").replace(" ", "_")

# make the beta font

# make a PDF proof
margins = 50

# make a PDF proof for glyph-set
fSize = 72
fLeading = fSize*1.2
pageHeight = 595
pageWidth = 842

pdfPath = 'documentation/proofs/%s_GlyphSet.pdf' % prfx
doc = PDFDocument(pdfPath)

with doc.drawing() as db:
	db.newPage(pageWidth, pageHeight)
	# db.font('fonts/otf/HiburMono-Regular.otf')
	db.font('fonts/ttf/HiburMono-Regular.ttf')
	db.fontSize(fSize)

	txt = open('sources/glyphSet.txt', 'r').readlines()
	j = fSize*.5
	t = fSize*.5
	for l in txt:
		l = l.strip()
		for e in l:
			db.text(e, (margins+t, pageHeight-(margins+j)), align='center')
			t += fSize*1.5
			if t > pageWidth - 2*margins:
				t = fSize*.5
				j += fLeading
			if j >= pageHeight - 2*margins:
				db.newPage(pageWidth, pageHeight)
				# db.font('fonts/otf/HiburMono-Regular.otf')
				db.font('fonts/ttf/HiburMono-Regular.ttf')
				db.fontSize(fSize)
				j = fSize*.5
				t = fSize*.5
		
			
