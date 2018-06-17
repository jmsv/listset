install:
	python setup.py install

clean:
	rm -rf build/ dist/ listset.egg-info/ __pycache__/
	rm -f *.pyc *.*.pyc

dist:
	python3 setup.py check
	python3 setup.py sdist bdist_wheel

upload:
	twine upload dist/*
