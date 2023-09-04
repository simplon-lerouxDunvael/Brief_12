<div style='text-align: justify;'>

## Plan d'action Projet Devensys Cybersecurity, Sécurité Cloud et Infrastructure 

<div id='top'/>  

---

## Sommaire  

### [0 - Scrum quotidien](#Scrum)

### [1 - Lecture des documentations ...](#Documentations)  

### [2 - Topologies de l'infrastructure](#Topologie)  

&nbsp;&nbsp;&nbsp;&nbsp;[a) Topologie de l'infrastructure](#TopoInfra)  
&nbsp;&nbsp;&nbsp;&nbsp;[b) Topologie réseau NPS](#TopoNPS)

### [3 - Liste des ressources](#Ressources)

### [4 - Installation des outils](#Outils)

### [5 - ](#)

### [ - ](#)

### [ - ](#)

### [ - ](#)

### [ - ](#)

### [ - ](#)

### [ - ](#)


### [19 - Document d'Architecture Technique de l'infrastructure déployée](#DAT)

[&#8679;](#top)   

---

[&#8679;](#top)   

<div id='Scrum'/>   

### **Scrum quotidien**
Compte-rendu quotidien immédiat et désignation des premières tâches du jour.

[scrums](https://github.com/simplon-lerouxDunvael/Projet_D26/tree/main/Plans_et_demarches/Methodologie_scrum.md)

[&#8679;](#top) 

<div id='Documentations'/>  

### **Lecture des documentations ...**
Lecture des documentations afin de déterminer les fonctionnements, prérequis et outils/logiciels nécessaires pour remplir les différentes tâches du projet  

* Bicep
* Intune
* NPS
* PKI
* SCEP
* Azure DevOps (pipelines, repos overview, ...)
* Azure Docs
* 

[&#8679;](#top)  

<div id='Topologie'/>  

### **Topologies de l'infrastructure**
Infrastructure Plannifiée  

[&#8679;](#top)  

<div id='TopoInfra'/>

**a) Topologie de l'infrastructure**  

s[&#8679;](#top)  

<div id='TopoNPS'/>

**b) Topologie réseau NPS**  

[&#8679;](#top)  

<div id='TopoPKI'/>

**c) Topologie de la PKI**  

![Topologie_PKI](https://user-images.githubusercontent.com/108001918/203064782-62afc03f-05d1-4f10-969a-60c61a323a86.png)

[&#8679;](#top)  

<div id='TopoMDM'/>

**d) Topologie de la solution MDM**  

[&#8679;](#top)  

<div id='Ressources'/>  

### **Liste des ressources**  

-----------
| Ressources | Vm W10 | Serveur AD CS |  Serveur W10 |
| :--------: | :--------: | :--------: | :--------: |
| Azure service | ✓ | ✓ | ✓ |
| ressource groupe | ✓ |✓ | ✓ |
| localisation | ✓ |✓ | ✓ |
| SSH (port) | N/A | 6379 | 80 |
| CPU | N/A | 100m-250m | 100m-250m |
| Mémoire | N/A | 128mi-256mi | 128mi-256mi |
| Image | N/A | redis:latest  | whujin11e/public:azure_voting_app |
| Load Balancer | N/A | ✓ puis ✗ | ✓ |
|  | N/A | ✗ puis ✓ | ✗ |
| Keyvault | ✓ | ✓ | ✓ |
| Keyvault secret | ✓ | ✓ | ✓ |
| Storage account (Premium LRS) | N/A | ✓ | ✓ |
|  | N/A | ✓ | ✗ |
| NIC | N/A | ✓ | ✗ |
| Vnet | ✓ | ✗ | ✓ |
| PublicIP | ✓ | ✗ | ✗ |
| DNS | ✓ | N/A | ✓ |
|  | N/A | N/A | ✓ |
|  | N/A | N/A | ✓ |
| Auto-scaling | ✗ | ✗ | ✓ |

ID Subscription :  

[&#8679;](#top)  

<div id='Outils'/> 

### **Installation des Outils**  

Installation et configuration des différents outils utilisés :

* Visual Studio Code
* Git
* Github  
* Azure CLI  
* Terraform  

[&#8679;](#top)   

---

<div id=''/>  

### ****



[&#8679;](#top)   

<div id=''/>  

### ****  

[&#8679;](#top)   

<div id=''/>  

### ****  

[&#8679;](#top)   

<div id=''/>  

### ****  

[&#8679;](#top)   

<div id=''/>  

### ****  

[&#8679;](#top)   

<div id=''/>  

### ****  

[&#8679;](#top)   

<div id=''/>  

### ****  

[&#8679;](#top)   

<div id=''/> 

### ****  

[&#8679;](#top)   
  
</div>
