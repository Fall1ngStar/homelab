PWD := `pwd`
export KUBECONFIG := PWD + "/metal/kubeconfig.yaml"
export KUBE_CONFIG_PATH := KUBECONFIG

default:
    @just --list

metal:
    @just metal/

bootstrap:
    @just bootstrap/