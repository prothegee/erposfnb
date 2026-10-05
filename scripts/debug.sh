#!/usr/bin/bash
set -euo pipefail;

arg1="$1";
arg1_all="all";

# --------------------------------------------------------- #

show_help() {
    printf "TODO: show help\n";
}

initialize() {
    printf "TODO: initialize\n";
    if [ -f "./scripts/initialize.sh" ]; then
        "./scripts/initialize.sh";
    else
        printf "scripts/initialize.sh is missing\n";
    fi
}

run_all() {
    printf "TODO: run all\n";
    initialize;
}

# --------------------------------------------------------- #

while [ "$#" -gt 0 ]; do
    case "$1" in
        $arg1_all)
            run_all;
            ;;
        *)
            printf "Unknown argument '$1'\n";
            show_help;
            ;;
    esac

    shift
done
