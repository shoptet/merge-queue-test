#!/bin/bash

print_primes() {
    N=$(cat max_number)
    for ((i=2; i<=N; i++)); do
        is_prime=1
        sleep 1
        for ((j=2; j*j<=i; j++)); do
            if ((i % j == 0)); then
                is_prime=0
                break
            fi
        done
        if ((is_prime)); then
            echo $i
        fi
    done
}

print_primes
