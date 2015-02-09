PDFC = xelatex
READER = evince

TARGET = vocabularyCards.pdf
OUTGROWTH = *.log *.aux
SOURCE = vocabularyCards.tex
FILES = wordLists/*

$(TARGET): $(SOURCE) $(FILES)
	$(PDFC)	$(SOURCE)
	$(PDFC)	$(SOURCE)

read:
	$(READER) $(TARGET) &

clean:
	-rm $(OUTGROWTH)

distclean:
	-rm $(TARGET) $(OUTGROWTH)

.PHONY:clean read
