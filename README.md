# ArgoCD Installation & App Deployment

Simple ArgoCD installation using Helm chart and example application creation.

[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li><a href="#argocd">ArgoCD</a></li>
    <li><a href="#kubernetes">Kubernetes</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

A simple ArgoCD installation demo with a template for a web app Kubernetes deployment.

### Built With

* [ArgoCD](https://argoproj.github.io/cd/)
* [Kubernetes](https://kubernetes.io/)


## Getting Started

To install ArgoCD in your Kubernetes cluster (e.g., EKS), simply run the ```argocd_deploy.sh``` script.

```bash
bash argocd_deploy.sh
```

This script will print the ArgoCD server as well as the initial ArgoCD password to use for login.

The ```argocd``` directory containes the ArgoCD Helm chart and the ```deployment``` directory contains the Kubernetes example deployments.

In addition, ```application.yaml``` file created the ArgoCD application and the ```repository.yaml``` file connects the desired repository (e.g., GitHub, GitLab, Bitbucket, etc.) to ArgoCD.

## ArgoCD

ArgoCD is a continuous delivery tool for Kubernetes that automates the deployment of applications. 

It synchronizes desired application state with the actual state in the cluster, ensuring configurations are consistent. ArgoCD simplifies the management of Kubernetes deployments by providing a declarative GitOps approach, enhancing reliability and scalability in application delivery pipelines.

## Kubernetes

Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. 

It provides a framework for deploying, maintaining, and scaling applications across a cluster of machines, abstracting away the underlying infrastructure complexities. Kubernetes facilitates efficient resource utilization, high availability, and scalability, making it a cornerstone technology in modern cloud-native development.


[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-white.svg?
[linkedin-url]: https://linkedin.com/in/stelios-giannikis
