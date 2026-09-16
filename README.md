# Terraform and Ansible Automation Lab

Repository: https://github.com/nisha-subramaniyan/iac-demo.git

This repository demonstrates basic Infrastructure as Code (IaC) using Terraform and Ansible.

## Project Objectives

- Install and use Terraform and Ansible.
- Configure a Terraform provider.
- Create infrastructure using Terraform.
- Use Terraform variables, outputs, and state.
- Create an Ansible inventory and playbook.
- Use Ansible to install a package, create a user, and start a service.
- Understand the difference between Terraform and Ansible.

## Project Structure

```text
terraform-ansible-lab/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   └── outputs.tf
├── ansible/
│   ├── inventory.ini
│   └── playbook.yml
├── week6_IaC_Task.pdf
├── .gitignore
└── README.md
```

## Prerequisites

- Ubuntu running in WSL
- Git
- Terraform
- Ansible
- Internet connection for provider and package installation

## Installation Verification

Check that Terraform and Ansible are installed:

```bash
terraform version
ansible --version
```

Include the output in your screenshots folder if required.

## Terraform

Terraform is an Infrastructure as Code tool that defines and manages resources through configuration files.

This project uses the `local` provider to create a file on the local WSL machine.

### Terraform Files

- `main.tf` defines the Terraform provider and local file resource.
- `variables.tf` defines reusable input variables.
- `terraform.tfvars` provides values for the variables.
- `outputs.tf` displays useful information after deployment.

### Terraform Commands

Move to the Terraform directory:

```bash
cd terraform
```

Initialize the working directory:

```bash
terraform init
```

Validate the Terraform configuration:

```bash
terraform validate
```

Preview planned changes:

```bash
terraform plan
```

Create the resource:

```bash
terraform apply
```

Type `yes` when Terraform requests confirmation.

Display outputs:

```bash
terraform output
```

View resources stored in state:

```bash
terraform state list
terraform show
```

Destroy resources after taking screenshots:

```bash
terraform destroy
```

Type `yes` when Terraform requests confirmation.

### Terraform State

Terraform creates `terraform.tfstate` after a successful apply operation.

The state file tracks resources Terraform manages, including the local file created in this lab. Do not manually edit or commit state files to GitHub.

## Ansible

Ansible is an automation and configuration-management tool.

This project uses Ansible to configure the local WSL Ubuntu system.

### Inventory

The inventory file is located at:

```text
ansible/inventory.ini
```

It contains `localhost`, which tells Ansible to run tasks on the same WSL system.

Check the inventory:

```bash
cd ansible
ansible-inventory -i inventory.ini --list
```

### Playbook

The playbook is located at:

```text
ansible/playbook.yml
```

The playbook performs these tasks:

- Installs the Nginx package.
- Creates a user named `deployuser`.
- Starts and enables the Nginx service.

Run the playbook:

```bash
ansible-playbook -i inventory.ini playbook.yml --ask-become-pass
```

Verify the created user:

```bash
id deployuser
```

Verify the Nginx service:

```bash
systemctl status nginx --no-pager
```

## Terraform vs Ansible

| Feature | Terraform | Ansible |
|---|---|---|
| Primary purpose | Provision infrastructure | Configure systems and automate tasks |
| Configuration format | HCL files (`.tf`) | YAML playbooks (`.yml`) |
| State management | Uses `terraform.tfstate` | Does not use a Terraform-style state file |
| Common tasks | Create cloud resources, networks, VMs, and storage | Install packages, manage users, start services, configure applications |
| Example in this project | Creates a local file | Installs Nginx, creates a user, starts Nginx |

Terraform and Ansible can be used together. Terraform provisions infrastructure first, and Ansible configures the servers and applications after they are available.

## Screenshots

Add screenshots to the `screenshots/` directory.

Required screenshots:

- Terraform installation verification
- `terraform init`
- `terraform plan`
- `terraform apply`
- `terraform output`
- `terraform state list`
- `terraform destroy`
- Ansible playbook execution
- Nginx service verification
- Created user verification

## PDF Report

The PDF report is stored in:

```text
week6_IaC_Task.pdf
```

It explains:

- Infrastructure as Code
- Terraform
- Terraform State
- Variables and Outputs
- Modules
- Ansible
- Inventory
- Playbooks
- Terraform vs Ansible

## Git Commands

Check changed files:

```bash
git status
```

Stage all project files:

```bash
git add .
```

Create a commit:

```bash
git commit -m "Add Terraform and Ansible automation lab"
```

Push changes to GitHub:

```bash
git push origin main
```

Do not commit Terraform state files.

The `.gitignore` file excludes `.terraform/` and `*.tfstate*` so that local state is not pushed to GitHub.
