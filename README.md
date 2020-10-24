# Docker executor helper for GitLab CI/CD environment for k8s

This helper allows you to easy deploy kubernetes item to k8s from GitLab CI.

You can use next utils for deploy:
```
kubectl  - for deploy to k8s
envsubst - for yaml annotation variable replacement
pwgen    - for password generation 
```

Simple configuration usage for GitLab CI/CD in `.gitlab.ci` file:
```
stages:
  - deploy
deploy:
  stage: deploy
  image: matrozov/k8s-deploy:latest
  script:
    - envsubst < "manifest.yaml" > "manifest.deploy.yaml"
    - kubectl apply -f manifest.deploy.yaml
```