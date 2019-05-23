#!/bin/bash

read -r -d '' USAGE << EOF
Usage: susana [command]

Commands:
-config		setup config for open edx app
-build		build APK
-update		update details
-branch BRANCH	use provided branch
-h		show this message\n
EOF

COMMANDS='update:config:build:branch:h'
BRANCH='master'

while getopts $COMMANDS option
do
case $option in
	update)
		;;
	config)
		;;
	build)
		;;
	branch) BRANCH=$OPTARG 
		;;
	h) printf "$USAGE" && exit 2
		;;
*) printf "$USAGE" && exit 1
		;;
esac
done

shift $((OPTIND - 1))
