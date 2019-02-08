#! /bin/sh

if [ $1 ]; then
    cd `dirname $0`
    case $1 in
        "local")
            docker-compose -f ./docker-compose.local.yml ${@:2}
            break
        ;;
        "development")
            docker-compose -f ./docker-compose.development.yml ${@:2}
            break
        ;;
        "production")
            docker-compose -f ./docker-compose.production.yml ${@:2}
            break
        ;;
        * )
            echo "Please input available platform."
            break
        ;;
    esac
else
   echo "Please input platform to script paramater.\n ./docker-compose.sh platform [args]"
fi

