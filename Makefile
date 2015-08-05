
### prompt6/Makefile

.PHONY: default \
	setup \
	tox tox27 tox34 toxdocs \
	test test-all test-2734 \
	docs open \
	install install-as-editable \
	pull push

default: test-2734

setup:
	which tox || pip install tox

tox:
	tox

tox27:
	tox -e 2.7

tox34:
	tox -e 3.4

toxdocs:
	tox -e docs

test:
	$(MAKE) test-all

test-all:
	$(MAKE) tox

test-2734:
	tox -e 2.7,3.4

docs:
	sphinx-build -b html ./docs/ ./docs/_build/html/
	@#$(MAKE) -C docs html
	@#$(MAKE) toxdocs

install:
	pip install .

install-as-editable:
	pip install -e .

open:
	websh.py ./docs/_build/html/index.html || \
		open ./docs/_build/html/index.html

pull:
	git pull

push:
	git push
