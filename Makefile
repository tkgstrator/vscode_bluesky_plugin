PHONY: push
push:
	act -P ubuntu-24.04=catthehacker/ubuntu:act-22.04

PHONY: pull_request
pull_request:
	act -P ubuntu-24.04=catthehacker/ubuntu:act-22.04 --eventpath .github/pull_request.closed.develop.json

PHONY: token
token:
	gh auth token
