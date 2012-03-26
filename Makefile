urls.txt:
	./urls.R > urls.txt

wget: urls.txt
          wget -nc -nH --cut-dirs=3 --no-parent --reject="index.html*" -i urls.txt

	# for url in urls.txt; do
	#   wget --user='isimip-user' --password='isimip1234' \
	#     -r -nc -nH --cut-dirs=3 --no-parent --reject="index.html*" url &
	# done

#	wget --user='isimip-user' --password='isimip1234' http://vre1.dkrz.de:8080/thredds/fileServer/isi_mipEnhanced/HadGEM2-ES/historical/huss/huss_bced_1960_1999_hadgem2-es_historical_1961-1970.zip
#	wget --user='isimip-user' --password='isimip1234' http://vre1.dkrz.de:8080/thredds/fileServer/isi_mipEnhanced/HadGEM2-ES/rcp4p5/tasmax/tasmax_bced_1960_1999_hadgem2-es_rcp4p5_2006-2010.zip


