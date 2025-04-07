# Projet Terraform et AWS

Ce projet utilise Terraform et AWS CLI pour provisionner une infrastructure cloud, déployer un cluster Kubernetes, et y installer des outils de monitoring ainsi que des microservices.

## Prérequis

1. **Installation de Terraform et AWS CLI**  
   Assurez-vous que Terraform et AWS CLI sont installés sur votre machine.

2. **Installation des plugins Terraform et AWS CLI**  
   Configurez les plugins nécessaires pour Terraform et AWS CLI.

3. **Préparation du dépôt GitHub**  
   Clonez ou créez un dépôt GitHub pour ce projet, puis ouvrez-le avec Visual Studio Code.

---

## Étapes réalisées

### 1. Configuration de Terraform

1.1 **Configuration du backend**  
Le backend a été configuré pour stocker l'état de Terraform de manière sécurisée.

1.2 **Configuration de l'authentification des providers**  
Les credentials AWS ont été configurés pour permettre l'accès aux ressources cloud.

---

## Étapes à venir

### 2. Provisionner l'infrastructure réseau sur AWS  
Créer les ressources réseau nécessaires, telles que les VPC, sous-réseaux, passerelles, etc.  
2.1 Créer 2 sous-réseaux publics et 2 sous-réseaux privés.  
2.2 Configurer les tables de routage pour les sous-réseaux publics et privés.


### 3. Provisionner un cluster Kubernetes  
Déployer un cluster Kubernetes (EKS) sur AWS.

### 4. Installer des outils de monitoring  
Configurer des outils de monitoring (comme Prometheus et Grafana) dans le cluster.

### 5. Déployer un microservice  
Déployer une application microservice dans le cluster Kubernetes.

---
