#! /bin/bash

# Initialize variables:
port=8001
microservice="user"

while getopts "h?p:m:" opt; do
    case "$opt" in
    h|\?)
        show_help
        exit 0
        ;;
    p)  port=$OPTARG
        ;;
    m)  microservice=$OPTARG
    esac
done

shift $((OPTIND-1))

[ "${1:-}" = "--" ] && shift

printf "exec command:\n  "
printf "apisprout --add-server http://localhost:${port} --validate-server --validate-request -p $port /swagger/$microservice-api.yaml \n\n"
printf "----##----"

apisprout --add-server http://localhost:${port} --validate-server --validate-request -p $port /swagger/$microservice-api.yaml