#! /usr/bin/env bash

CXX="${CXX:-"clang++"}"
CFLAGS="-pedantic -Wall -fno-exceptions"

if [[ $2 == "part1" ]] || [[ -z $2 ]];then
    if [[ $1 == "test" ]]; then
	exec ./part1.awk < test.txt
    fi

    if [[ $1 == "run" ]]; then
	exec ./part1.awk < input.txt
    fi
fi

if [[ $2 == "part2" ]] || [[ -z $2 ]]; then
    if [[ part2.cpp -nt part2 ]]; then
	if not $(exec $CXX $CFLAGS -o part2 part2.cpp); then
	    exit 1
	fi
    fi

    if [[ $1 == "test" ]]; then
	echo "--- part 1 ---"
	exec ./part2 < test.txt
	echo "--- part 2 ---"
	exec ./part2 < test2.txt
    fi

    if [[ $1 == "run" ]]; then
	exec ./part2 < input.txt
    fi
fi

exit 0
