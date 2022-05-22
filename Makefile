# Narthex Makefile
# GNU GPL v3.0

CC=gcc
MD=/usr/share/man/man1/

#all: inc/nin.c enhance/nhan.c leet/nleet.c com/ncom.c rev/nrev.sh
#	$(CC) enhance/nhan.c -o nhance
#	$(CC) inc/nin.c -o ninc
#	$(CC) leet/nleet.c -o nleet
#	$(CC) com/ncom.c -o ncom

install: inc/nin.c enhance/nhan.c leet/nleet.c com/ncom.c clean/nclean.c app/napp.c rev/nrev.sh wiz/nwiz.sh inc/ninc.1 enhance/nhance.1 rev/nrev.1 leet/nleet.1 com/ncom.1 clean/nclean.1 app/napp.1
	$(CC) enhance/nhan.c -o nhance
	$(CC) inc/nin.c -o ninc
	$(CC) leet/nleet.c -o nleet
	$(CC) com/ncom.c -o ncom
	$(CC) clean/nclean.c -o nclean
	$(CC) app/napp.c -o napp
	mv nhance /bin
	mv ninc /bin
	mv nleet /bin
	mv ncom /bin
	mv nclean /bin
	mv napp /bin
	cp rev/nrev.sh /bin/nrev
	cp wiz/nwiz.sh /bin/nwiz
	mkdir -p /var/lib/narthex/
	cp wiz/elder.txt /var/lib/narthex/
	cp enhance/nhance.1 $(MD)
	cp inc/ninc.1 $(MD)
	cp leet/nleet.1 $(MD)
	cp com/ncom.1 $(MD)
	cp clean/nclean.1 $(MD)
	cp app/napp.1 $(MD)
	cp rev/nrev.1 $(MD)
	mandb

uninstall: /bin/ninc /bin/nhance /bin/nrev /bin/nleet /bin/ncom /bin/nclean /bin/napp /bin/nwiz $(MD)ninc.1 $(MD)nhance.1 $(MD)nrev.1 $(MD)nleet.1 $(MD)ncom.1 $(MD)nclean.1 $(MD)napp.1
	rm /bin/ninc $(MD)ninc.1
	rm /bin/nhance $(MD)nhance.1
	rm /bin/nleet $(MD)nleet.1
	rm /bin/nrev $(MD)nrev.1
	rm /bin/ncom $(MD)ncom.1
	rm /bin/nclean $(MD)nclean.1
	rm /bin/napp $(MD)napp.1
	rm /bin/nwiz
	rm -r /var/lib/narthex/
