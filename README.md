<div align="center">
<img src="https://raw.githubusercontent.com/thaddeuscleo/cleoverse-gitops/main/docs/src/assets/logo.png" align="center" width="144px" height="144px"/>


### My Home Operations Repository :octocat:

_... managed with Flux_ 🤖
</div>

## 📖 Overview

This is a mono repository for my home infrastructure and Kubernetes cluster. I try to adhere to Infrastructure as Code (IaC) and GitOps practices using tools like [Ansible](https://www.ansible.com/), [Terraform](https://www.terraform.io/), [Kubernetes](https://kubernetes.io/), [Flux](https://github.com/fluxcd/flux2), [Renovate](https://github.com/renovatebot/renovate), and [GitHub Actions](https://github.com/features/actions).


### GitOps

[Flux](https://github.com/fluxcd/flux2) watches the clusters in my [kubernetes](./kubernetes/) folder (see Directories below) and makes the changes to my clusters based on the state of my Git repository.

The way Flux works for me here is it will recursively search the `clusters/${cluster}/` folder until it finds the most top level `kustomization.yaml` per directory and then apply all the resources listed in it. That aforementioned `kustomization.yaml` will generally only have a namespace resource and one or many Flux kustomizations (`ks.yaml`). Under the control of those Flux kustomizations there will be a `HelmRelease` or other resources related to the application which will be applied.



To Encrypt the secret using SOPS
```
sops -e -i 'file-name.sops.yaml'
```

To Dencrypt the secret using SOPS
```
sops -d -i 'file-name.sops.yaml'
```