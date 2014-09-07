all: diff.png sine_pi_2.png sine_17pi_2.png

%.mpcyr : %.mp
	echo 'verbatimtex' > $@
	echo '\\documentclass[12pt]{minimal}' >> $@
	echo '\\usepackage[T2A]{fontenc}' >> $@
	echo '\\usepackage[utf8]{inputenc}' >> $@
	echo '\\usepackage{amsmath,amssymb}' >> $@
	echo '\\begin{document}' >> $@
	echo 'etex;' >> $@
	echo 'vppp:=.25;' >> $@
	echo 'hppp:=.25;' >> $@
	cat $< >> $@

%.png : %.mpcyr
	mpost -tex=latex -s outputtemplate=\"%j.png\" -s outputformat=\"png\" $<

junk:
	rm -f *.log *.mpx *.eps *.pdf *.mpcyr *.tex

clean: junk
	rm -f *.png
