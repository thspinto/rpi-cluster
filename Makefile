.PHONY: ansible
ansible:
	$(MAKE) -C ansible all

.PHONY: secrets
secrets:
	kubectl apply -f secrets.yaml
