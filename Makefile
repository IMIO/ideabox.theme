#!/usr/bin/make

grunt-dev:
	npm init
	npm install grunt
	npm install autoprefixer
	npm install grunt-browser-sync grunt-contrib-watch grunt-contrib-less grunt-postcss
	grunt compile

build-dev:
	python3 -m venv .
	ln -f -s dev.cfg buildout.cfg
	bin/pip install -I -r requirements.txt
	bin/buildout
	make grunt-dev

build-prod:
	python3 -m venv .
	ln -f -s prod.cfg buildout.cfg
	bin/pip install -I -r requirements.txt
	bin/buildout

cleanall:
	rm -rf bin develop-eggs downloads include lib lib64 parts .installed.cfg .mr.developer.cfg bootstrap.py parts/omelette local share
