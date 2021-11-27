# Elk-Stack-Project

Class Project 1, Elk Stack.

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![](Diagrams/)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - `/etc/ansible/install-elk.yml` 

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly efficient, in addition to restricting traffic to the network.

- What aspect of security do load balancers protect?
  - Load balancing lets you evenly distribute network traffic to prevent failure caused by overloading a particular resource. This strategy improves the performance and  availability of applications, websites, databases, and other computing resources. It also helps process user requests quickly and accurately.  

- What is the advantage of a jump box?
  - A Jump-Box is a hardened and monitored device that controls access to other internal devices, another advantage of a Jump-Box is the orgination point for launching Administrative Tasks.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the filesystem and system resources.

- Filebeat watch for?
  - log files and filesystem changes.

- What does Metricbeat record?
  - system-level CPU usage, memory, file system, disk IO, and network IO statistics.

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump-Box | Gateway  | 10.0.0.7   | Linux            |
| Web-1    | Webserver | 10.0.0.10  | Linux            |
| Web-2    | Webserver | 10.0.0.9   | Linux            |
| Elk-VM   | Monitoring | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

- Only the Jump-Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
  - My home network public IP address.

- Machines within the network can only be accessed by Jump-Box. Which machine did you allow to access your ELK VM? What was its IP address?
  - Local Workstation via SSH from my home network public IP address which a policy has been put in place to allow me to connect to the Jump-Box.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/SSH | SSH - My home network IP address | 
| Web-1    | Yes/HTTP   | HTTP - any, SSH - 10.0.0.7    |  
| Web-2    | Yes/HTTP    | HTTP - any, SSH - 10.0.0.7   |
| Elk-VM   | Yes/HTTP, SSH |HTTP - any, SSH - 10.0.0.7  |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous becausethe main advantage is that you can put commands into multiple servers from a single playbook, like how I combined Filebeat and Metricbeat.

The playbook implements the following tasks:
- Install docker.io
- Install python3-pip
- Install Docker python module
- Configure syslog to use more memory 
- Install ELK Stack
- Enable Docker service

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats

This ELK server is configured to monitor the following machines:

| Name     | IP Addresses |
|----------|--------------|
| Web-1 |  10.0.0.10  |
| Web-2 | 10.0.0.9  |


- We have installed the following Beats on these machines:
  - Filebeat and Metricbeat.

- These Beats allow us to collect the following information from each machine:
  - Filebeat monitors log files or locations you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.
  - Metricbeat collects metrics from the operating system and from services running on the server.

### Using the Playbook

In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the playbook file to `/etc/ansible`.
- Update the `/etc/ansible/hosts` file to include the Elk and Webservers private IP addresses.
- Run the playbook, and navigate to Kibana (http://[Host IP]/app/kibana#/home) to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
