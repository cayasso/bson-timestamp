BASEDIR=$(CURDIR)
WGET:=$(shell which wget)
FILE=${BASEDIR}/timestamp.js
URL=https://raw.githubusercontent.com/mongodb/js-bson/master/lib/bson/timestamp.js

build: 
ifdef WGET
	wget ${URL} -O - > ${FILE}
else
	curl ${URL} > ${FILE}
endif