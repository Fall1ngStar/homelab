.PHONY: *

.EXPORT_ALL_VARIABLES:

KUBECONFIG = $(shell pwd)/metal/kubeconfig.yaml
KUBE_CONFIG_PATH = $(KUBECONFIG)

default: metal

metal:
	make -C metal

bootstrap:
	make -C bootstrap