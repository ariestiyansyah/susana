#!/bin/bash

help(){
    cat<<__EOF__
    usage: susana [option]

    Options:
	susana config		setup config for open edx app
	susana build		build APK
	susana update		update git sub module
	susana help		show this message
__EOF__
}

REPO="edx-app-android"
CONFIG="config"

case $1 in
    help)
        help
        ;;
    config)
		cat $CONFIG/setup.properties >> $REPO/OpenEdXMobile/gradle.properties
        ;;
    build)
		cd $REPO/ && ./gradlew assembleProdRelease
        ;;
	module)
		git submodule init && git submodule update
		;;
    *)
        help
        ;;
esac