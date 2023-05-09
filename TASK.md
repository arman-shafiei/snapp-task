### Prerequisites:
- A Kubernetes Cluster.
- You can use MiniKube.
- Create a namespace for the project (e.g. snapp-project).
- A Simple Web Application project that could be Dockerized.
- It could be a simple HTTP server or any web-based/API(RESTful) server.
- [optional] add a healthcheck endpoint to the web-application.
- Use GitLab's CI/CD to build and deploy the sample project (also gitlab.com is acceptable).
- Install a local gitlab-runner and connect it to the K8s cluster (provide the least k8s privileges for the runner).
- Use configuration management (Ansible) to install the gitlab-runner.

### Scenario:
**a.** Assume we have a simple web application project and want to deploy it on the k8s cluster. Provide all related manifests to deploy this app (Dockerfile, Gitlab CI/CD pipeline).
**b.** In the created pipeline, you should be able to deploy a new version of this application triggered by a new git repository tag.
**c.** We want to send traffic to this web application. What’s your approach to accomplishing this? Apply the required steps on the k8s cluster and describe your reason(s): “why did you choose this approach?” on the document.
**d.** Implement a mechanism to roll back the deployed version to the previous one using the CI/CD pipeline.
**e.** [optional] Implement a mechanism to scale the pod replica based on resource usage and test it by simulating high-load traffic on the application.
