#!/bin/bash


print_usage()
{
    echo "$0 [-h] [-p PATH]"
}


while getopts "hp:" opt; do
    case $opt in
        "h")
            print_usage
            exit 0 ;;
        "p")
            prefix=$OPTARG ;;
        "?")
            print_usage
            exit 0 ;;
    esac
    shift $((OPTIND - 1))
done

if [ -z "$prefix" ]; then
    print_usage
    exit 0
fi

install_files="git-cleanup git-sync"

if [[ -e "$prefix" && ! -d "$prefix" ]]; then
    echo "$0: prefix must be a directory" >&2
    exit 1
fi

mkdir -p "$prefix/bin"
install -p $install_files "$prefix/bin"
