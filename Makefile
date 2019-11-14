VERSION=2.0.2-alternative-woowa1


gksu-${VERSION}.deb: gksu-alternative/**
	cd gksu-alternative && dpkg-buildpackage -us -uc

build: gksu-${VERSION}.deb

clean:
	rm -rf gksu_2.0.2-alternative-woowa1*.*
	cd gksu-alternative && ./debian/rules
