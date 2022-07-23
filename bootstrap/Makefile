.PHONY: namespace argocd root

default: namespace argocd root

namespace:
	kubectl create namespace argocd --dry-run=client --output=yaml \
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