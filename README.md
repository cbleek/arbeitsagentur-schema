# Arbeitsagentur helpers

Wer mit den Rohdaten der Arbeitsagentur, die mit Namen wie
``050220_212059_dkz_vam_verbis_hrba.zip`` unter
https://hrbaxml.arbeitsagentur.de erhältlich sind, fragt sich
vielleicht, was sich an den Dateinen von Tag zu Tag ändert. Ein einfaches
``diff`` ist nicht aussagekräftig. Denn bei den XML Daten aus dem ZIP File
ändert sich an vielen Stellen nur die Reienfolge fon eintragen.

Dieses Repo enthält xsl File, welche die nodes im XML sortiert. Dadurch
können wir sehen, dass sich zwischen dem 03.02.2020 und dem 04.02.2020
folgendes geändert hat.

https://github.com/cbleek/arbeitsagentur-schema/commit/9141393a9dceec573afc84af5723c2a31cde225d

Dadurch wird sichtbar, was sich wirklich geändert hat. 

## Requirements

die Sortierung geschieht per XSL. Unter Linux benötigt man das
``xsltproc`` Paket. Unter ubuntu bekommt man es per ``àpt get xsltproc``

## Usage

git clone https://github.com/cbleek/arbeitsagentur-schema/commit/9141393a9dceec573afc84af5723c2a31cde225d
./sort.sh
