#!/usr/bin/env make
KUBECONFIG := $(shell kind get kubeconfig-path --name="kind")

prepare:
	kind create cluster --config kind-config.yml

test:
	#docker build -t sorintlab/stolon:master-pg10 ..
	#kind load docker-image sorintlab/stolon:master-pg10
	KUBECONFIG=$(KUBECONFIG) kubectl apply -f k8s/
	#stolonctl init --cluster-name kube-stolon --store-backend kubernetes --kube-resource-kind configmap

teardown:
	kind delete cluster
