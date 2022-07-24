.PHONY: namespace argocd root age-key

AGE_KEY_PATH = $(HOME)/.age/key.txt

default: namespace age-key argocd root

namespace:
	kubectl create namespace argocd --dry-run=client --output=yaml \
		| kubectl apply -f -

age-key:
	kubectl create secret generic \
		helm-secrets-private-keys \
		--from-file=$(AGE_KEY_PATH) \
		--namespace argocd \
		--dry-run=client --output=yaml \
		| kubectl apply -f -

argocd/charts: argocd/Chart.yaml
	cd argocd \
		&& helm dependency update

argocd: argocd/charts
	cd argocd && \
		./apply.sh

root:
	cd root && \
		./apply.sh