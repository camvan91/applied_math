# Makefile

OUTPUT = applied_math.ps \
         applied_math.pdf \
         applied_math_letter.pdf \
         acm95.ps \
         acm95.pdf \
         acm95_letter.pdf \
         applied_math_users_guide.pdf

ALL: applied_math users_guide

# The users guide.
users_guide:
	pdflatex users_guide
	mv users_guide.pdf applied_math_users_guide.pdf

# The abridged version for the Caltech class: ACM 95/100.
acm95: acm95_screen acm95_letter acm95_ps

# The unabridged version.
applied_math: ps letter screen

# compile once
applied_math1: ps1 letter1 screen1

# postscript
ps: 
	$(RM) applied_math_ps.aux
	latex applied_math_ps
	latex applied_math_ps
	makeindex applied_math_ps.idx
	bibtex applied_math_ps
	latex applied_math_ps
	dvips -t letter -o applied_math.ps applied_math_ps.dvi

# postscript, once
ps1: 
	latex applied_math_ps
	makeindex applied_math_ps.idx
	bibtex applied_math_ps
	dvips -t letter -o applied_math.ps applied_math_ps.dvi

# pdf, letter
letter: 
	$(RM) applied_math_letter
	export pool_size=500000;\
        export max_strings=30000;\
        pdflatex applied_math_letter;\
        pdflatex applied_math_letter;\
        makeindex applied_math_letter.idx;\
        bibtex applied_math_letter;\
        pdflatex applied_math_letter

# pdf, letter, once
letter1: 
	export pool_size=500000;\
        export max_strings=30000;\
        pdflatex applied_math_letter;\
        makeindex applied_math_letter.idx;\
        bibtex applied_math_letter

# screen pdf
screen: 
	$(RM) applied_math_screen.aux
	export pool_size=500000;\
        export max_strings=30000;\
        pdflatex applied_math_screen;\
        pdflatex applied_math_screen;\
        makeindex applied_math_screen.idx;\
        bibtex applied_math_screen;\
        pdflatex applied_math_screen;\
        mv applied_math_screen.pdf applied_math.pdf

# screen pdf, once
screen1:
	export pool_size=500000;\
        export max_strings=30000;\
        pdflatex applied_math_screen;\
        makeindex applied_math_screen.idx;\
        bibtex applied_math_screen;\
        mv applied_math_screen.pdf applied_math.pdf

# screen pdf
acm95_screen: 
	$(RM) acm95_screen.aux
	export pool_size=500000;\
        export max_strings=30000;\
        pdflatex acm95_screen;\
        pdflatex acm95_screen;\
        makeindex acm95_screen.idx;\
        bibtex acm95_screen;\
        pdflatex acm95_screen;\
        mv acm95_screen.pdf acm95.pdf

# screen pdf, once
acm95_screen1: 
	export pool_size=500000;\
        export max_strings=30000;\
        pdflatex acm95_screen;\
        makeindex acm95_screen.idx;\
        bibtex acm95_screen;\
        mv acm95_screen.pdf acm95.pdf

# portable document format
acm95_letter: 
	$(RM) acm95_letter.aux
	export pool_size=500000;\
        export max_strings=30000;\
        pdflatex acm95_letter;\
        pdflatex acm95_letter;\
        makeindex acm95_letter.idx;\
        bibtex acm95_letter;\
        pdflatex acm95_letter

# postscript
acm95_ps: 
	$(RM) acm95_ps.aux
	latex acm95_ps
	latex acm95_ps
	makeindex acm95_ps.idx
	bibtex acm95_ps
	latex acm95_ps
	dvips -t letter -o acm95.ps acm95_ps.dvi

# latex2html

acm95_l2h:
	latex acm95_l2h
	latex acm95_l2h
	makeindex acm95_l2h.idx
	bibtex acm95_l2h
	latex acm95_l2h
	latex2html -split 4 -link 2 -toc_depth 2 -math -html_version 3.2,math -dir ../acm95_html -mkdir -address "Sean Mauch, http://www.its.caltech.edu/~sean/" acm95_l2h.tex

applied_math_l2h:
	latex applied_math_l2h
	latex applied_math_l2h
	makeindex applied_math_l2h.idx
	bibtex applied_math_l2h
	latex applied_math_l2h
	latex2html -split 4 -link 2 -toc_depth 2 -math -html_version 3.2,math -dir ../applied_math_html -mkdir -address "Sean Mauch, http://www.its.caltech.edu/~sean/" applied_math_l2h.tex

# Remove unecessary files.
# Emacs leaves *~ files.  xfig leaves *.bak files.
clean: 
	$(RM) *~ */*~ */*/*~ *.bak */*.bak */*/*.bak *.aux *.dvi *.idx *.ilg *.ind *.log *.msg *.out *.toc */*/*.aux 

# Remove unecessary files and output
distclean: 
	$(MAKE) clean 
	$(RM) $(OUTPUT) 

# Remove unecessary files and output and make the output again. 
again: 
	$(MAKE) distclean 
	$(MAKE)

archive:
	$(MAKE) distclean
	cd ..;\
        tar -czf applied_math.tar.gz applied_math;\
        zip -r applied_math.zip applied_math
