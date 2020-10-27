#!/bin/bash

#Aquest es el nou projecte en github

if [[ $EUID -ne 0  ]]; then
	echo "Has d'obrir aquest script com a sudo"
	exit 1
fi

echo "Introdueix el nom d'usuari: "

read nomusuari

echo "Introdueix el teu nom real: "

read nomreal

echo "Introdueix la teva contrassenya: "

read -s cont

OUTPUT=`useradd $nomusuari | tail -n 1`

echo $OUTPUT
