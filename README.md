# terraform-remote-state-store
 
Project showcasing different terraform state store configuration options

- [s3-remote-state-store-aws](s3-remote-state-store-aws): creates an simple state store in s3 and state lock in dynamoDB \
$ terraform init -reconfigure \
$ terraform plan \
$ terraform apply --auto-approve
------------

- [s3-backend-with-workspace](s3-backend-with-workspace): creates an simple state store in s3 and state lock in dynamoDB which is optimized to be used with terraform workspace\
$ terraform init -reconfigure
- Workspace "blue" \
$ terraform workspace new blue \
$ terraform workspace select blue \
$ terraform plan \
$ terraform apply --auto-approve 

- Workspace "green" \
$ terraform workspace new green \
$ terraform workspace select green \
$ terraform plan \
$ terraform apply --auto-approve 
------------
