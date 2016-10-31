#!/bin/sh
#DIR=/usr/local/share/postgresql/tsearch_data/
DIR=/usr/local/Cellar/postgresql/9.3.0/share/postgresql/tsearch_data/

cd /tmp
curl -O http://ftp5.gwdg.de/pub/openoffice/contrib/dictionaries/ru_RU-pack.zip

unzip ru_RU-pack.zip
unzip ru_RU.zip

iconv -f koi8-r -t utf-8 < ru_RU.aff > russian.affix
iconv -f koi8-r -t utf-8 < ru_RU.dic > russian.dict
sudo mv russian.affix $DIR
sudo mv russian.dict $DIR
echo "CREATE TEXT SEARCH DICTIONARY russian_ispell ( TEMPLATE = ispell, DictFile = russian, AffFile = russian, StopWords = russian);" | psql -U postgres
echo "CREATE TEXT SEARCH CONFIGURATION russian (COPY=russian);" | psql -U postgres
echo "ALTER TEXT SEARCH CONFIGURATION russian ALTER MAPPING FOR hword, hword_part, word WITH russian_ispell, russian_stem;" | psql -U postgres
echo "select to_tsvector('russian', 'мама мыла раму');" | sudo -u postgres psql
