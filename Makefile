ifneq (,$(wildcard .env))
	include .env
	export $(shell sed 's/=.*//' .env)
endif

.DEFAULT_GOAL := help

help:
	@echo "Usage:"
	@echo "  make <target>"
	@echo ""
	@echo "Targets: run, run-fg, stop, purge"

run: 
	docker compose up -d 

run-fg: 
	docker compose up

stop: 
	docker compose down

purge: 
	docker compose down -v

.PHONY: help run run-fg stop purge