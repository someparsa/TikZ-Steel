TEX = /Library/TeX/texbin/pdflatex
BUILD_DIR = build
TEXINPUTS = $(CURDIR)//:

DOCS = docs/tikzSteel-doc.tex
EXAMPLES = examples/cfs-gallery.tex examples/hrs-gallery.tex examples/rc-gallery.tex examples/style-customization.tex
TESTS = tests/smoke-cfs.tex tests/smoke-hrs.tex tests/smoke-keyval.tex tests/smoke-rc.tex
SOURCES = $(DOCS) $(EXAMPLES) $(TESTS)

.PHONY: all docs examples tests clean

all: docs examples tests

docs: $(DOCS)
	@mkdir -p $(BUILD_DIR)
	TEXINPUTS="$(TEXINPUTS)" $(TEX) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILD_DIR) $(DOCS)

examples: $(EXAMPLES)
	@mkdir -p $(BUILD_DIR)
	@for file in $(EXAMPLES); do \
		TEXINPUTS="$(TEXINPUTS)" $(TEX) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILD_DIR) $$file || exit 1; \
	done

tests: $(TESTS)
	@mkdir -p $(BUILD_DIR)
	@for file in $(TESTS); do \
		TEXINPUTS="$(TEXINPUTS)" $(TEX) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILD_DIR) $$file || exit 1; \
	done

clean:
	rm -rf $(BUILD_DIR)
