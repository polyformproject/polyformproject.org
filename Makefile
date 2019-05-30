FORMATS=docx odt pdf
TARGETS=$(foreach format,$(FORMATS),$(addsuffix .$(format),polyform-v1.0.0-pre.1))

all: $(TARGETS)

%.docx: %.md
	pandoc -o $@ $<

%.odt: %.md
	pandoc -o $@ $<

%.pdf: %.md
	pandoc -o $@ $<
