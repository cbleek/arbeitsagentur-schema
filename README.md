# Arbeitsagentur helpers

Wer mit den Rohdaten der Arbeitsagentur zu tun hat, die mit Namen wie
``050220_212059_dkz_vam_verbis_hrba.zip`` unter
https://hrbaxml.arbeitsagentur.de erhältlich sind, fragt sich
vielleicht, was sich an den Dateinen von Tag zu Tag ändert. Ein einfaches
``diff`` ist nicht aussagekräftig. Denn bei den XML Daten aus dem ZIP File
ändert sich an vielen Stellen nur die Reihenfolge von Einträgen.

Dieses Repo enthält xsl File, welche die nodes im XML sortiert. Dadurch
können wir sehen, dass sich zwischen dem [06.02.2020 und dem 08.02.2020](https://github.com/cbleek/arbeitsagentur-schema/commit/d3bf68f70ebfdb4b1d9f4e1fae87d09099b7ed1c)
lediglich IDs von Suchworten geändert haben.


## Requirements

die Sortierung geschieht per XSL. Unter Linux benötigt man das
[xsltproc](http://xmlsoft.org/XSLT/xsltproc.html) Paket. Unter ubuntu bekommt man es per ``àpt install xsltproc``

## Usage

git clone https://github.com/cbleek/arbeitsagentur-schema/commit/9141393a9dceec573afc84af5723c2a31cde225d
./sort.sh
