data/csv/salidas.csv: data/xlsx/salidas.xlsx
	ssconvert $< $@

test: data/csv/salidas.csv
	csvfix check -v $<

.PHONY: test
