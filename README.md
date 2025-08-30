
---

# 🚀 Deployment of Ruby based Web application  

[![Docker](https://img.shields.io/badge/Docker-Deployment-blue?logo=docker)](https://www.docker.com/)  
[![Kubernetes](https://img.shields.io/badge/Kubernetes-Deployment-blue?logo=kubernetes)](https://kubernetes.io/)  
[![Ruby on Rails](https://img.shields.io/badge/Rails-7.0-red?logo=ruby-on-rails)](https://rubyonrails.org/)  

---

## 🙌 Acknowledgment  
In this project a Ruby web application **The Budget-App**, created by [@evans22j](https://github.com/evans22j).  
Thank you [@evans22j](https://github.com/evans22j) for open-sourcing this awesome application!  

---

## 📂 Directory Structure  

```
.
├── k8s		   # Deployment file for the web application
├── (files)        # wrappers and argoCD application deployment files 
│   

```


---

## ☸️ Deploying with minikube K8s

- Note!
minikube is a tool to create a Single node K8s cluster for your pesonal play. If you already have a local K8s environement setup you can go into your K8s environment & skip to **Step 2. Clone Repository**. And yes ofc, docker is required too.
 

### 1. Install minikube
If minikube is not installed, goto the provided link and follow till **Step 5. Start minikube**:  
```bash
https://phoenixnap.com/kb/install-minikube-on-ubuntu
```


### 2. Clone Repository

```bash
git clone https://github.com/sachin857/Rails-kube.git && cd Rails-kube
```


### 3. Enable ingress [For minikube]
- Note!
For your K8s environment you can refer this article **[ https://kubernetes.github.io/ingress-nginx/deploy/ ]** . If you have any better source to setup I am always open for suggestion. 

Ingress is basically one point of contact for all the services of your application.


```bash
minikube addons enable ingress
```

### 3.1. To check if it is enable

```bash
kubectl get pods -A
```
	Expected STDOUT:
```bash


```


### 4. Map minikube IP with web app. domain [For minikube]

### 4.1. Get the IP and copy this IP

```bash
minikube ip
```

### 4.2. Open **/etc/hosts** using editor and append below line, then save & exit. Basically it is a local Domain mapping.

```bash
<minikube-IP>	budgy.local
```


### 5. Deploy the web application using wrapper

```bash
./run.sh
```


### To check if application is running:
- Note!
The docker image is not well optimize at this moment. Issue is it is building artifacts post deployment which should not happen. I will work on it.
For now wait for 4-5 minute and then run below command into the browser.


```bash
http://budgy.local
```


### To stop minikube

```bash
minikube stop
```


### For more minikube command refer below article

```bash
https://phoenixnap.com/kb/install-minikube-on-ubuntu
```

---

## 🚀 Deploying CI/CD pipeline



---

## 📬 Connect With Me

* 💼 [LinkedIn @uikeysa06](https://www.linkedin.com/in/uikeysa06/)
* 🐦 [X (Twitter) @imSachinUK](https://x.com/imSachinUK)
* 📧 Email: **[sau.freelancer06@gmail.com](mailto:sau.freelancer06@gmail.com)**
* 💻 [GitHub @sachin857](https://github.com/sachin857)

---
