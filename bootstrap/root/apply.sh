#!/bin/sh

VALUES="values-seed.yaml"

curl -fks --connect-timeout 5 https://git.tgarcin.fr \
    || VALUES="values-seed.yaml"

helm template \
    --include-crds \
    --namespace argocd \
    --values "${VALUES}" \
    argocd . \
    | kubectl apply -n argocd -f -
