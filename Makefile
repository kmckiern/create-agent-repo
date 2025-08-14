PY?=.venv/bin/python
PIP?=.venv/bin/pip

.PHONY: setup

setup:
	python3.11 -m venv .venv || python3 -m venv .venv
	$(PIP) install -U pip
	$(PIP) install -e .[dev]

	@if [ ! -d .git ]; then \
		git init -q; \
	fi
