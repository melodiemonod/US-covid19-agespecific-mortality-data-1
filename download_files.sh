#!/bin/bash
today=$(date +'%Y-%m-%d')
echo "$today"
mkdir -p data/$today/
mkdir -p pdfs/$today/
# csvs, excel sheets
## georgia

## Get most data
python scripts/age_extraction.py
GET https://data.ct.gov/resource/ypz6-8qyf.json > data/$today/connecticut_2.csv
python scripts/extraction_try.py
GET https://opendata.arcgis.com/datasets/ebf62bbdba59497a9dba00aed0c17078_0.csv > data/$today/alaska.csv
GET https://opendata.arcgis.com/datasets/90cc1ace62254550879f18cf94ca216b_0.csv > data/$today/colorado.csv
GET https://www.tn.gov/content/dam/tn/health/documents/cedep/novel-coronavirus/datasets/Public-Dataset-Age.XLSX > data/$today/tn.xlsx
