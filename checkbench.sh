#!/bin/bash
if /usr/local/bin/flux-cli getbenchmarks | grep -q 'failed'; then
            /usr/local/bin/fluxbench-cli restartnodebenchmarks
            echo "Restarting node benchmarks"
        else
            echo "Status is not failed"
        fi