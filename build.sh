#!/bin/bash

# run `npx ncc build thing/index.ts -o thing -m` for each `thing` directory that contains `action.yml`
find **/action.yml -print \
	| xargs -n1 dirname \
	| xargs -P 8 -I % npx ncc build %/index.ts -o % -m
