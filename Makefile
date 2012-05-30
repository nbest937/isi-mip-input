
# WGETRC := ./.wgetrc 


wget: urls.txt
	rm wget.log
	xargs --verbose -P10 -r -n1 -a urls.txt \
	  wget --no-verbose --append-output wget.log \
	    -c -nc -nH --cut-dirs=3 -x -i urls.txt

urls.txt:
	Rscript --vanilla urls.R > urls.txt

test:
	find IPSL-CM5A-LR -type f -not -name '*.nc' -execdir unzip -t '{}' \;

unzip:
	find IPSL-CM5A-LR -type f -not -name '*.nc' -execdir unzip -n '{}' \;

rmzip:
	find IPSL-CM5A-LR -regex '.*zip\(\?auth\)?$$' -execdir rm '{}' \;

.PHONY: wget test unzip rmzip




