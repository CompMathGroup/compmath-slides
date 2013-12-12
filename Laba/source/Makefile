.SUFFIXES:
.SUFFIXES: .pdf .ps

.ps.pdf :
	ps2pdf "-dEPSCrop" "-dCompatibilityLevel=1.4" "-dPDFSETTINGS=/prepress" $< $@
	copy $@ ..\images\$@ /y || del $@

all: rect.pdf lrect.pdf rrect.pdf trap.pdf
