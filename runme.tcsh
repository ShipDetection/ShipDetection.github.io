# this is really ugly-- it creates the PNG files from the fly files (do "tcsh runme.tcsh 1" to run)

# pipe the output of this script to tcsh (not sh)

if $argv[1] == 1 then

# uncomment line below and comment next line to use fly instead of fakefly

# find TILES -iname '*.fly' | perl -nle 's/\.fly//; if (-M "$_.fly" < -M "$_.png" || !(-s "$_.png")) {print "echo $_; fly -q -i $_.fly -o $_.png"}'

find TILES -iname '*.fly' | perl -nle 's/\.fly//; if (-M "$_.fly" < -M "$_.png" || !(-s "$_.png")) {print "echo $_; fakefly.pl $_.fly > $_.png"}'

endif
