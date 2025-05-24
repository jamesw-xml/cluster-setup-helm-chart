# cluster-setup Helm Chart

This Helm chart provisions a Kubernetes environment with essential components for modern cloud-native workloads. It includes:

- **Argo CD** for GitOps-based continuous delivery and application management.
- **cert-manager** for automated management and issuance of TLS certificates.
- **KurrentDB** as a stateful database service, with persistent storage and optional TLS.
- Configurable **Ingress**, **Service**, **Deployment**, and **Horizontal Pod Autoscaler** resources for your application.
- Namespace creation hooks for isolating Argo CD and KurrentDB resources.

The chart is designed to be deployed on any Kubernetes cluster, including local clusters created with [kind](https://kind.sigs.k8s.io/) and managed clusters such as Azure Kubernetes Service (AKS).

## Usage

1. Install the chart into your cluster (e.g., kind or AKS) using Helm:

   ```sh
   helm install cluster-setup ./cluster-setup