DIRS := $(shell find . -name helm -type d | sed "s/helm//g")
.PHONY: ansible
ansible:
	$(MAKE) -C ansible all

.PHONY: secrets
secrets:
	kubectl apply -f secrets.yaml

.PHONY: render-helm $(DIRS)
render-helm: $(DIRS)

$(DIRS):
	$(MAKE) -C $@ render


.PHONY: install-helm $(DIRS)
install-helm: $(DIRS)

$(DIRS):
	$(MAKE) -C $@ install-chart
