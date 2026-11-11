TYPST ?= typst
OUT_DIR := output/pdf

.PHONY: all cn en merge watch-cn watch-en clean

all: cn en

cn: $(OUT_DIR)/cv_cn.pdf

en: $(OUT_DIR)/cv_en.pdf

$(OUT_DIR)/cv_cn.pdf: cv_cn.typ resume.typ
	mkdir -p "$(@D)"
	"$(TYPST)" compile cv_cn.typ "$@"

$(OUT_DIR)/cv_en.pdf: cv_en.typ resume.typ
	mkdir -p "$(@D)"
	"$(TYPST)" compile cv_en.typ "$@"

merge: $(OUT_DIR)/cv_cn_en.pdf

$(OUT_DIR)/cv_cn_en.pdf: $(OUT_DIR)/cv_cn.pdf $(OUT_DIR)/cv_en.pdf
	pdfunite "$(OUT_DIR)/cv_cn.pdf" "$(OUT_DIR)/cv_en.pdf" "$@"

watch-cn:
	mkdir -p "$(OUT_DIR)"
	"$(TYPST)" watch cv_cn.typ "$(OUT_DIR)/cv_cn.pdf"

watch-en:
	mkdir -p "$(OUT_DIR)"
	"$(TYPST)" watch cv_en.typ "$(OUT_DIR)/cv_en.pdf"

clean:
	rm -f "$(OUT_DIR)/cv_cn.pdf" "$(OUT_DIR)/cv_en.pdf" "$(OUT_DIR)/cv_cn_en.pdf"
