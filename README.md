# SIMPLE CRUD API WITH DJANGO REST FRAMEWORK. Cloud Native Now

## Requirements
- Helm
- Kubectl 
- Docker + Minikube for local development / testing

## Installation
After you cloned the repository, you can just run script in root project directory
```bash
cd ./devops/scripts/
deploy.sh
```

## Use

You need to port forward ingress controller service 

``` bash
kubectl port-forward svc/ingress-nginx-controller 8000:80
```

And then you can just open http://localhost:8000/api/<route>

All routes can be found here

https://github.com/juanbeniteza/django-rest-framework-crud

## Github actions secrets

DOCKERHUB_USERNAME = $YourDockerHubUserName

DOCKERHUB_PASSWORD = $YourDockerHubPassword

Also change this lines to your

```yaml
tags: |
    yourusername/tagname:${{ github.sha }}
    yourusername/tagname:latest
```

K8S_URL = $YourClusterUrl

Just copy whole file content

KUBERNETES_SECRET = kubectl get secret github-actions-token -o yaml  

telegram_chat = $TelegramChatId

telegram_token = $TelegramBotToken

SLACK_WEBHOOK_URL = $SlackWebhookUrl

Create token here https://github.com/settings/tokens?type=beta

WORKFLOW_TOKEN = $TokenAbove