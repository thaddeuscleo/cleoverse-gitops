Create AGE SOPS
``` bash
kubectl -n flux-system create secret generic sops-age --from-file=keys.agekey=~/.sops/key.txt
```