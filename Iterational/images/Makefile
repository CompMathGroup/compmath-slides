.SUFFIXES:
.SUFFIXES: .pdf .ps

all: lAlB0_05.pdf lAlB0_20.pdf lAlB0_35.pdf lAlB0_40.pdf lAlB0_45.pdf lAlB0_51.pdf

.ps.pdf :
	ps2pdf "-dEPSCrop" "-dCompatibilityLevel=1.4" "-dPDFSETTINGS=/prepress" $< $@
