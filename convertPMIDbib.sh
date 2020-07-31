# Generate Public from PMIDs
# https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=31986926,31504172,31844052,31754640,31536960,31364989,30733383,30660105,31452137,30380468,30089654,30231023,30126533,29700392,29659649,29554091,29229699,28987344,29354107,29177666,29176613,29128334,29285300,29112936,29158977,28978127,28903051,28786313,28634232,28298427,28065597,27732863,26921299,26870755,26774489,26949739,26344197,26071590,25963654,25644660,25609093,25546499,25316676,25367773,26621466,25492630,25152371,24262152,24535059,24561554,24586182,24373767,24498054,24454883,24104479,23831759,23904270,23973481,23168417,23168686,22940862,22939629,22125496,21556145,21815091,21219465,21877280,21070944,20671182,19763343,19402753,19521826,19544035,19054114,18793685,19036160,18677321,18613973,18508955,18343851,15887033,15809875,15349794&retmode=xml
# Ubuntu install xsltproc
# Download http://www.genomearchitecture.com/static/misc/pubmed2bibtex.xsl
xsltproc pubmed2bibtex.xsl publication.xml > publication.bib
~/anaconda3/bin/academic import --bibtex publication.bib --overwrite

curl https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=32641451,32639961&retmode=xml --output pmid.xml
xsltproc pubmed2bibtex.xsl pmid.xml > pmid.bib
~/anaconda3/bin/academic import --bibtex pmid.bib --overwrite