if ( ! open (SRC,"<IN.txt")) {
    print "<p>Nelze otevrit pracovni soubor (KONVERZ.TXT).</p>\n" ;
    print "<p>Kontaktujte administratora.</p></body>\n" ;
    exit ;
}

while ($XLINE = <SRC>) {

chomp($XLINE);
$XLINE =~ s/\"/\\\"/g ;

#$XLINE = "vv" ;

print "print \"" ; print $XLINE ; print "\\n\";\n";


}

close SRC;


