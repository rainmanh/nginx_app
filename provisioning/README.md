Pipeline Build AutomationProvisioning
============================

## AWS CLI tools

Command used 

```
aws ec2 run-instances --region ap-southeast-1 --image-id ami-691cdc0a --count 3 --instance-type t1.micro --key-name keys --subnet-id subnet-1234agc  --security-group-ids sg-1234agc
```

Output can be found in file : *aws_cli.txt*


## Cloud Formation


Output can be found in file : *cloudformation.json*

##### Output from the CloudFormation Console in AWS

![Code Failure](https://github.com/rainmanh/nginx_app/blob/master/images/cloudformation.png)

## Terraform

# Execution

```
terraform apply -var 'aws_access_key={aws_access_key} -var 'aws_secret_key={aws_secret_key}' 
```

# Creation

```
aws_instance.app1: Creating...
  ami:                         "" => "ami-691cdc0a"
  associate_public_ip_address: "" => "1"
  availability_zone:           "" => "ap-southeast-1a"
  ebs_block_device.#:          "" => "<computed>"
  ephemeral_block_device.#:    "" => "<computed>"
  instance_type:               "" => "m1.small"
  key_name:                    "" => "keys"
  placement_group:             "" => "<computed>"
  private_dns:                 "" => "<computed>"
  private_ip:                  "" => "<computed>"
  public_dns:                  "" => "<computed>"
  public_ip:                   "" => "<computed>"
  root_block_device.#:         "" => "<computed>"
  security_groups.#:           "" => "1"
  security_groups.4045141286:  "" => "sg-1234abc"
  source_dest_check:           "" => "1"
  subnet_id:                   "" => "subnet-1234abc"
  tags.#:                      "" => "1"
  tags.Name:                   "" => "app1"
  tenancy:                     "" => "<computed>"
  vpc_security_group_ids.#:    "" => "<computed>"
aws_instance.web1: Creating...
  ami:                         "" => "ami-691cdc0a"
  associate_public_ip_address: "" => "1"
  availability_zone:           "" => "ap-southeast-1a"
  ebs_block_device.#:          "" => "<computed>"
  ephemeral_block_device.#:    "" => "<computed>"
  instance_type:               "" => "m1.small"
  key_name:                    "" => "keys"
  placement_group:             "" => "<computed>"
  private_dns:                 "" => "<computed>"
  private_ip:                  "" => "<computed>"
  public_dns:                  "" => "<computed>"
  public_ip:                   "" => "<computed>"
  root_block_device.#:         "" => "<computed>"
  security_groups.#:           "" => "1"
  security_groups.4045141286:  "" => "sg-1234abc"
  source_dest_check:           "" => "1"
  subnet_id:                   "" => "subnet-1234abc"
  tags.#:                      "" => "1"
  tags.Name:                   "" => "web1"
  tenancy:                     "" => "<computed>"
  vpc_security_group_ids.#:    "" => "<computed>"
aws_instance.app2: Creating...
  ami:                         "" => "ami-691cdc0a"
  associate_public_ip_address: "" => "1"
  availability_zone:           "" => "ap-southeast-1a"
  ebs_block_device.#:          "" => "<computed>"
  ephemeral_block_device.#:    "" => "<computed>"
  instance_type:               "" => "m1.small"
  key_name:                    "" => "keys"
  placement_group:             "" => "<computed>"
  private_dns:                 "" => "<computed>"
  private_ip:                  "" => "<computed>"
  public_dns:                  "" => "<computed>"
  public_ip:                   "" => "<computed>"
  root_block_device.#:         "" => "<computed>"
  security_groups.#:           "" => "1"
  security_groups.4045141286:  "" => "sg-1234abc"
  source_dest_check:           "" => "1"
  subnet_id:                   "" => "subnet-1234abc"
  tags.#:                      "" => "1"
  tags.Name:                   "" => "app2"
  tenancy:                     "" => "<computed>"
  vpc_security_group_ids.#:    "" => "<computed>"
aws_instance.app2: Creation complete
aws_instance.web1: Creation complete
aws_instance.app1: Creation complete

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

The state of your infrastructure has been saved to the path
below. This state is required to modify and destroy your
infrastructure, so keep it safe. To inspect the complete state
use the `terraform show` command.

State path: terraform.tfstate
```

Files can be found in directory : *terraform*
