all: diff.eps sine_pi_2.eps sine_17pi_2.eps

%.mpcyr : %.mp
	echo 'verbatimtex' > $@
	echo '\\documentclass[12pt]{minimal}' >> $@
	echo '\\usepackage[T2A]{fontenc}' >> $@
	echo '\\usepackage[utf8]{inputenc}' >> $@
	echo '\\usepackage{amsmath,amssymb}' >> $@
	echo '\\begin{document}' >> $@
	echo 'etex;' >> $@
	cat $< >> $@

%.eps : %.mpcyr
	mpost -tex=latex -s outputtemplate=\"%j.eps\" $<

clean : 
	rm -f *.log *.mpx *.eps *.pdf *.mpcyr *.tex
