setup:
	pkg update
	pkg upgrade
	apt-get install curl jq figlet ncurses-utils
run:
	chmod 0755 main.sh
	./main.sh
