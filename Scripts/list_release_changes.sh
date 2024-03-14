#!/bin/bash

$LAST_GIT_TAG=$(git for-each-ref --sort=-taggerdate --format '%(refname:short)' refs/tags | head -n 1)
$PREVIOUS_TO_LAST_GIT_TAG=$(git for-each-ref --sort=-taggerdate --format '%(refname:short)' refs/tags | sed -n '2p')

git log --invert-grep --grep="Bumping" --first-parent --pretty=format:"%s by %an" $PREVIOUS_TO_LAST_GIT_TAG..$LAST_GIT_TAG