# Terraform Image For Build And Deployment Automation

Docker image with installed Terraform and several other commonly used tools.
The image makes use of the image provided by Hashicorp.
The Hashicorp image specifies an `ENTRYPOINT` which makes the image unusable for builds on Bamboo.
This seems to be a known issue which was e.g. also mentioned in https://github.com/hashicorp/docker-hub-images/issues/37.

To make the base image usable e.g. for build and deployment pipelines running on Bamboo, the image built here overwrites the `ENTRYPOINT`.