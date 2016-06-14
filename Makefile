develop:
	pip install -e .

test:
	python tests/test.py

release:
	pip install bumpversion

publish-patch: release
	bumpversion patch subp/core.py
	python setup.py publish
