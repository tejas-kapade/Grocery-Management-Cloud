# Grocery-Management website on Azure Kubernetes Service (AKS)<br>
### Project Overview <br>

- **Project Name:** Grocery Management 
- **Group Members:** Tejas Kapade, Srushti Bidaye.
- **Date:** 29/10/2023

The **Grocery Management** project is a cloud-based solution that utilizes Azure services to let you do shopping of groceries using web-application deployed on AKS cluster.

<br>

### -----------------------About This Project------------------------------<br>

 *The grocery management project aims to address the following problem statement: "Inefficient and time-consuming grocery shopping processes for consumers and limited inventory control for store owners." This project will provide a comprehensive solution to optimize the grocery shopping experience for consumers by developing a user-friendly mobile application that enables them to create and manage shopping lists, find the most cost-effective products, and access real-time inventory information.* <br>
### ______________________________________________________________________



## Azure Services Used in this Project

1. **Azure Kubernetes Service (AKS)**: Azure Kubernetes Service (AKS) is a managed Kubernetes container orchestration service in Microsoft Azure for deploying, managing, and scaling containerized applications.

2. **Azure Load Balancer**: It is a network service that distributes incoming network traffic across multiple virtual machines to ensure high availability, scalability, and reliability for applications hosted in Azure.

3. **Virtual Machine Scale Set (VMSS)**: It is a service that allows you to deploy and manage a group of identical virtual machines. It automatically increases or decreases the number of VM instances in response to changes in demand, helping to ensure high availability, load distribution, and efficient resource utilization for your applications.



## Code overview
- For Frontend: HTML, CSS, JS,
- For Backend: PHP,
- For database MariaDB service is used,<br>
- Every file required to run the web-app is in /Grocery-Management repository.



### -----------------------Clone this Repository---------------------------<br>
- execute command inside your machine<br>
**$ git clone https://github.com/Tejas-K90/Grocy-Management/**



### --------------------------- Database dump-----------------------------------<br>
- There is "GROCYHERE.sql" file as SQL DUMP file.<br>
- You can DUMP SQL DATABASE into MARIADB by using these steps<br>
1. First Make Database named as "GROCERY" inside your mariadb server<br>
2. Execute this command inside yor linux<br>
**$ mysql -u root -p GROCERY < GROCYHERE.sql**<br>
- All tables and data will be imported inside your database<br>



### -----------------------------Apache------------------------------<br>
- All required files are inside "/Grocery_Management" folder.<br>
- Complete instalation of apache2 and php inside your machine,<br>
- Copy this all files from "/Grocery_Management" folder and paste to "/var/www/html" directory inside your machine.<br>
- start the apache server<br>
**$ systemctl start apache2**<br>
### _______________________________________________________________

# Azure Services Overview<br>
### 1. Azure Kubernetes Service (AKS)
![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/3f87e6e7-82a0-4028-9ab0-a6e367a1808a)
![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/96cc22b6-48b7-4995-ac1a-77bdef7bf125)
### 2. Virtual Machine Scale Set (VMSS)
![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/095199cb-df41-42de-9aa2-e7a87ad9bdd9)
![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/fdf187c7-6154-44e9-bb12-3df13b0aa633)
### 3. Load Balancer
![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/a7a441fd-c476-4103-932a-3a219fb47fa8)
![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/a1e7e04b-039a-439e-bb14-3f56af7ed784)
<br>
## For more Step-By-Step explaination please refer our Project-Documentation:
### Link For Documentation: [Project-Documentation.pdf](https://github.com/Tejas-K90/Grocery-Management/blob/main/Project-Documentation.pdf)

<br>

# Output Overview
![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/cdd78309-2fc4-4629-9ef5-ff732cbe59d8)

![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/f79e2b78-a58c-46dd-aa98-17a8349b23cb)

![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/8b90ed7b-1658-417a-94b1-edfaaa91da7b)

![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/0c0c492c-68a9-40f6-abc7-4708cebb4ce4)

![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/53a3d43a-8750-4485-903e-90bddc18f355)

![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/2748f3ae-4d59-4e7c-b26a-74f4c9c4c0a1)

![image](https://github.com/Tejas-K90/Grocery-Management/assets/61987805/e739fdc4-3026-4c4a-aca3-d2ce0ad6b568)

# _______________Thank-You_________________
