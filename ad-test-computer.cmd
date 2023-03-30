@echo off
echo -----------------------------

echo Test Running [AD Computer Create] - Create
cd ad-computer-create
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-computer-create-result.txt
terraform apply -auto-approve -no-color >> ..\ad-computer-create-result.txt
echo Test Running [AD Computer Create] - Destroy
terraform destroy -auto-approve -no-color >> ..\ad-computer-create-result.txt
cd ..

echo Test Running [AD Computer List #1]
cd ad-computer-list-1
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-computer-list-1-result.txt
terraform apply -auto-approve -no-color >> ..\ad-computer-list-1-result.txt
cd ..

echo Test Running [AD Computer List #2]
cd ad-computer-list-2
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-computer-list-2-result.txt
terraform apply -auto-approve -no-color >> ..\ad-computer-list-2-result.txt
cd ..

echo -----------------------------
