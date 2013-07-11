.PHONY: all

all: out/stun_client_start.pdf

out/%.pdf: %.dot
	mkdir -p out
	cd out; \
	cp ../$< ./; \
	dot -Tpdf $< -o $(notdir $@)
