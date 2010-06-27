#!/bin/bash

usage() {
	cat <<EOT
Usage: $0 <features_directory>
	Starts the Cuke4Php server
	-p <port> 	set the prot to listen to, defaults to 16816
	-h 		help
EOT
}


while getopts "hp:" opt; do
  case $opt in
    h)
      	usage
		exit 0
      	;;
	p)
		PORT=$OPTARG
		;;
    \?)
      	echo "Invalid option: -$OPTARG" >&2
      	;;
  esac
done

bin/cuke4php.php -p $PORT ${!OPTIND}