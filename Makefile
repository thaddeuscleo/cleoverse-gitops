encr:
	sops -e -i "./cluster/base/vars/cluster-secret-vars.sops.yaml"
	sops -e -i "./cluster/apps/cert-manager/cert-manager/issuer/secret.sops.yaml"

decr:
	sops -d -i "./cluster/base/vars/cluster-secret-vars.sops.yaml"
	sops -d -i "./cluster/apps/cert-manager/cert-manager/issuer/secret.sops.yaml"