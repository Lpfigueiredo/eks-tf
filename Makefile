.DEFAULT_GOAL := default

.PHONY: setup-kubectl
setup-kubectl:
	aws eks --region $(terraform output -raw region) update-kubeconfig \
    --name $(terraform output -raw cluster_name)


.PHONY: cluster-info
cluster-info:
	kubectl cluster-info


.PHONY: get-nodes
get-nodes:
	kubectl get nodes
