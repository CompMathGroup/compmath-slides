%.pdf : %.ps
	ps2pdf "-dEPSCrop" "-dCompatibilityLevel=1.4" "-dPDFSETTINGS=/prepress" $< $@
	copy $@ ..\images\$@ /y || del $@

%.pdf : %.eps
	ps2pdf "-dEPSCrop" "-dCompatibilityLevel=1.4" "-dPDFSETTINGS=/prepress" $< $@
	copy $@ ..\images\$@ /y || del $@

all: 
