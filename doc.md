
# Welcome

## What is Terraform?

Terraform is an open source tool developed by HashiCorp and their respective community. The tool itself is for building, changing, and versioning infrastructure in a safe, efficient, and repeatable way. Terraform does this through connection with providers, often developed for a by particular offerings such as Azure, AWS, and GCP, and can even work with custom in-house provider based solutions.

Terraform uses configuration files for the definition of resources to create. These resources make up what Terraform builds to run an entire data center, application, or related deployment. As the configuration is changed Terraform determines what differences are and creates incremental execution plans which can be applied.

...

The infrastructure Terraform can manage includes low-level components such as compute instances, storage, and networking, as well as high-level components such as DNS entries, SaaS features, etc.

Examples work best to showcase Terraform. Please see the use cases.

The key features of Terraform are:

### » Infrastructure as Code

Infrastructure is described using a high-level configuration syntax. This allows a blueprint of your datacenter to be versioned and treated as you would any other code. Additionally, infrastructure can be shared and re-used.

### » Execution Plans

Terraform has a "planning" step where it generates an execution plan. The execution plan shows what Terraform will do when you call apply. This lets you avoid any surprises when Terraform manipulates infrastructure.

### » Resource Graph

Terraform builds a graph of all your resources, and parallelizes the creation and modification of any non-dependent resources. Because of this, Terraform builds infrastructure as efficiently as possible, and operators get insight into dependencies in their infrastructure.

### » Change Automation

Complex changesets can be applied to your infrastructure with minimal human interaction. With the previously mentioned execution plan and resource graph, you know exactly what Terraform will change and in what order, avoiding many possible human errors.

## Goals for this course.

# What you should know

To get the most out of this course there are a few things you should be moderately familiar with. These include;

* Computer Networking - Basic understanding of what an IP number is, how they're assigned via DHCP vs. static, and related basic TCP/IP knowledge. Also it is helpful, yet not necessary to understand the idea behind CIDR ranges and related network concepts about addressing also.
* Basic Linux or Unix CLI Commands - Commands like; `ls`, `mv`, `rm`, `cp`, `mkdir`, `rmdir`, `wget`, `curl`, `ping`, `traceroute`, `ifconfig`, `nslookup`, `vi`, `kill`, `chown`, `whoami`, `su`, `chmod`, `chown`, `chroot`, `cat`, `env`, `echo` or `tail`. All these commands are't used in the couse, but they're fundamental for building and troubleshooting any infrastructure and related environments and systems in the future.
* Basic Scripting and Language Constructs - Things like if-then-else, while loops, and related programming constructs for use in scripting like Bash or Powershell.

# Terraform vs. Comparable Tooling

... vs.

* CloudFormation, Azure Resource Templates, Heat, etc. - https://www.terraform.io/intro/vs/cloudformation.html
* Chef, Puppet, Etc - https://www.terraform.io/intro/vs/chef-puppet.html 
* Other software.

# Why Immutable Infrastructure?

http://blog.armory.io/spinnaker-feature-immutable-infrastructure/
https://blog.codeship.com/immutable-infrastructure/
https://thenewstack.io/a-brief-look-at-immutable-infrastructure-and-why-it-is-such-a-quest/

# Downloading & Installation

https://www.terraform.io/downloads.html

Installation and upgrade (possibly have old version, check it, then upgrade)

# Getting Started Terraform Initialization

https://www.terraform.io/docs/commands/init.html
https://www.terraform.io/docs/backends/init.html

# Terraform "Hello World"

Let's create a resource with a statically assigned IP.

# Building Your Ecosystem

What can be built? Let's build a usable server and assign the IP to it.

# Building a Network

Introduce the notion of what a network is in the cloud.

**Networking with AWS**

https://aws.amazon.com/products/networking/ discuss each of the 4 products.
http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Networking.html discuss the networking components
Some additional questions and answers that might be useful > https://aws.amazon.com/answers/networking/

* Network Interfaces
* Route Tables
* Internet Gateways
* Egress-Only Internet Gateways
* DHCP Options Sets
* DNS
* Elastic IP Addresses
* VPC Endpoints
* NAT
* VPC Peering
* ClassicLink

AWS Networking ala Terraform
https://www.terraform.io/docs/providers/aws/index.html

**Networking with GCP**

https://cloud.google.com/products/networking/ discuss each of the products.
https://cloud.google.com/vpc/docs/vpc 
https://cloud.google.com/vpc/docs/concepts
https://cloud.google.com/compute/docs/networks-and-firewalls
https://cloud.google.com/interconnect/

GCP Networking ala Terraform
https://www.terraform.io/docs/providers/google/index.html

**Networking with Azure**

https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview
The Azure Networking Blog https://azure.microsoft.com/en-us/blog/topics/networking/

Azure Network ala Terraform
https://www.terraform.io/docs/providers/azurerm/index.html

Discuss building and setting up the IP and instance we've previously created inside a new network. 

Create new network. Put IP and Instance into the new network.

# Network, Subnetworks

Build out a network with respective subnetworks and discuss the reasoning and ideas behind subnetworks. Scaling devices into them, etc.

LINK TO TERRAFORM NETWORK SETUP REPO -> 

# Deploy Servers

Let's deploy some standard servers now. Once I get that deployed I'll show you how to go beyond that and start setting up services on the server, and even deploy a little application service code from the Terraform perspective.

LINK TO TERRAFORM SERVER SETUP REPO -> 

# Virtual Machines

Now that we've setup a server, let's take a look at managing multiple servers deployed within the overall environment.

LINK TO TERRAFORM MULTIPLE VIRTUAL MACHINES SETUP REPO -> 

# Clusters w/ Cloud Platforms

Alright, now that we've gotten some virtual servers running, we're going to leap into the future with Kubernetes, deployed via Terraform. I won't talk about Kubernetes itself much, but this is a great way to show how Terraform can actually deploy some complex servers and related infrastructure with only a minimal amount of configuration.

One could setup each of these resources we'll review from individual resources within the environment that they're deploying. But in this scenario I'll show you a single container cluster resource that will take care of the entire deployment for us. It's really cool.

- DEPLOY TO AZURE... talk about connecting then...
- DEPLOY TO GCP... talk about connecting then...
- Maybe AWS too?

LINK TO AZURE SETUP -> 

LINK TO GCP SETUP -> 

# Terraform Syntax Deep Dive

Alright. We've got some pretty solid infrastructure deployed, safely able to be recreated, and all neatly written up in our configuration files.

# Overview of Commands w/ CLI

I've covered the four most common commands of Terraform have gotten us this far, but let's talk about what else Terraform provides for us.

```
terraform init
terraform plan
terraform apply
terraform destroy
```

...

```
terraform console
terraform workspace (nix `env`, it's deprecated, change to workspace)
    show
    list
    select
    new
    delete
terraform fmt
terraform get (reference the fact I'll cover more on modules later)
terraform graph
terraform import
terraform output
terraform providers
terraform push (Is it still called Atlas, seems to be in the help in the CLI)
terraform refresh
terraform show
terraform taint
terraform untaint
terraform validate
terraform version
terraform state
```

# Variables

Ok, now with some basic infrastructure built and the terraform commands covered, let's talk about Terraform variables and how we can declare, assign, and use these to extend Terraform's dynamic capabilities.

# Environment Variables

I've covered many ways to declare, use, and mainpulate variables within Terraform. There's one more way I want to cover before moving on. This is Terraform and the convention it uses around environment variables. I wanted to break this out specifically because of the tendency to use environment variables for secret information, or just for information we might keep outside of a repository. 

The simple idea is that Terraform will look for any environment variables starting with `TF_VAR_` and 

# Secrets

Vault -> what to do for secret management (push variable)

# Terraform Best Practices

LINK -> NEED TO GET LINK TO SOME OF THIS MATERIAL.

# Guidance: Patterns & Practices

LINK -> NEED TO GET LINK AND RELATED MATERIAL.

# Workflow

# Project Practices

# Debugging & Testing

# Customizing & Extending Terraform

# Go & Terraform

# Go Plugins & Terraform Plugins

# Contributing to Terraform

# HashiCorp Tooling

# Next Steps
