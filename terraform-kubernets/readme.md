## $ [cloud_user@ip-10-0-1-220 section2-hol1]$ cat ~/.kube/config
```
apiVersion: v1
clusters:
- cluster:
    certificate-authority: /home/cloud_user/.minikube/ca.crt
    server: https://172.17.0.3:8443
  name: minikube
contexts:
- context:
    cluster: minikube
    user: minikube
  name: minikube
current-context: minikube
kind: Config
preferences: {}
users:
- name: minikube
  user:
    client-certificate: /home/cloud_user/.minikube/profiles/minikube/client.crt
    client-key: /home/cloud_user/.minikube/profiles/minikube/client.key
```

## $ [cloud_user@ip-10-0-1-220 section2-hol1]$ kubectl get all -A --show-labels
```
NAMESPACE     NAME                                   READY   STATUS             RESTARTS   AGE   LABELS
kube-system   pod/coredns-f9fd979d6-7887l            0/1     Running            0          26m   k8s-app=kube-dns,pod-template-hash=f9fd979d6
kube-system   pod/etcd-minikube                      1/1     Running            0          26m   component=etcd,tier=control-plane
kube-system   pod/kube-apiserver-minikube            1/1     Running            0          26m   component=kube-apiserver,tier=control-plane
kube-system   pod/kube-controller-manager-minikube   1/1     Running            0          26m   component=kube-controller-manager,tier=control-plane
kube-system   pod/kube-proxy-z6wdm                   0/1     CrashLoopBackOff   10         26m   controller-revision-hash=ff45b7d7d,k8s-app=kube-proxy,pod-template-generation=1
kube-system   pod/kube-scheduler-minikube            1/1     Running            0          26m   component=kube-scheduler,tier=control-plane
kube-system   pod/storage-provisioner                1/1     Running            9          26m   addonmanager.kubernetes.io/mode=Reconcile,integration-test=storage-provisioner

NAMESPACE     NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)                  AGE   LABELS
default       service/kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP                  26m   component=apiserver,provider=kubernetes
kube-system   service/kube-dns     ClusterIP   10.96.0.10   <none>        53/UDP,53/TCP,9153/TCP   26m   k8s-app=kube-dns,kubernetes.io/cluster-service=true,kubernetes.io/name=KubeDNS

NAMESPACE     NAME                        DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR            AGE   LABELS
kube-system   daemonset.apps/kube-proxy   1         1         0       1            0           kubernetes.io/os=linux   26m   k8s-app=kube-proxy

NAMESPACE     NAME                      READY   UP-TO-DATE   AVAILABLE   AGE   LABELS
kube-system   deployment.apps/coredns   0/1     1            0           26m   k8s-app=kube-dns

NAMESPACE     NAME                                DESIRED   CURRENT   READY   AGE   LABELS
kube-system   replicaset.apps/coredns-f9fd979d6   1         1         0       26m   k8s-app=kube-dns,pod-template-hash=f9fd979d6
```

## $ [cloud_user@ip-10-0-1-220 section2-hol1] $ terraform init
```
Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/kubernetes...
- Installing hashicorp/kubernetes v2.18.1...
- Installed hashicorp/kubernetes v2.18.1 (self-signed, key ID 34365D9472D7468F)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/plugins/signing.html

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, we recommend adding version constraints in a required_providers block
in your configuration, with the constraint strings suggested below.

* hashicorp/kubernetes: version = "~> 2.18.1"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

## $ [cloud_user@ip-10-0-1-220 section2-hol1]$ terraform apply --auto-approve
```
kubernetes_service.tf-k8s-service: Creating...
kubernetes_service.tf-k8s-service: Creation complete after 0s [id=default/terraform-k8s-service]
kubernetes_deployment.tf-k8s-deployment: Creating...
kubernetes_deployment.tf-k8s-deployment: Creation complete after 8s [id=default/tf-k8s-deploy]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```
