#!make
USERGROUP := $(shell id -gn)

init:
	pip3 install -r requirements.txt

config:
	sed -i 's|ExecStart=.*|ExecStart=python ${PWD}/main.py|g' blueberry.service
	sed -i 's|WorkingDirectory=.*|WorkingDirectory=${PWD}|g' blueberry.service
	sed -i "s|User=.*|User=${USER}|g" blueberry.service
	sed -i "s|Group=.*|Group=${USERGROUP}|g" blueberry.service

.ONESHELL:
setup:
	sudo cp apodwallpaper.service /etc/systemd/user/
	sudo chmod 644 /etc/systemd/user/blueberry.service
	systemctl --user daemon-reload
	systemctl --user enable blueberry.service

run:
	python main.py

.PHONY: init, config, setup, run