# Arbeitsagentur helpers

Wer mit den Rohdaten der Arbeitsagentur, die mit `Namen wie
``050220_212059_dkz_vam_verbis_hrba.zip`` erhältlich sind, fragt sich
vielleicht, was sich an den Dateinen von Tag zu Tag ändert. Ein einfaches
``diff`` ist nicht aussagekräftig. Denn bei den XML Daten aus dem ZIP File
ändert sich an vielen Stellen nur die Reienfolge fon eintragen.

Dieses Repo enthält xsl File, welche die nodes im XML sortiert.

Dadurch wird sichtbar, was sich wirklich geändert hat. 

Archive:  150219_212430_dkz_vam_verbis_hrba.zip
  inflating: berufe.xml              
  inflating: komp_hierarchie.xml     
  inflating: komp_suchworte.xml      
  inflating: kompetenzen.xml         
  inflating: vam_beruf.xml           
  inflating: vam_beruf_kurz.xml      
  inflating: struktur_berufe.xsd     
  inflating: berufe.xsd              
  inflating: kompetenzen.xsd         
  inflating: komp_suchworte.xsd      
  inflating: komp_hierarchie.xsd 

./sort.sh