all: index.html

index.html: index.qmd /tmp/officehrs.dat
	quarto render  $<

/tmp/officehrs.dat: ~/txt/org/officehours.org
	perl -lne "print for /^[*]+ (.*) FREE$$/" $^ > $@
