@echo off
cls
echo Clean up Logs
del /q ad*.txt

echo -----------------------------

echo AD Computer Create
del /q "ad-computer-create\.terraform.lock.hcl"
del /q "ad-computer-create\terraform.tfstate.*"
rmdir /s /q "ad-computer-create\.terraform"

echo AD Computer List #1
del /q "ad-computer-list-1\.terraform.lock.hcl"
del /q "ad-computer-list-1\terraform.tfstate.*"
rmdir /s /q "ad-computer-list-1\.terraform"

echo AD Computer List #2
del /q "ad-computer-list-2\.terraform.lock.hcl"
del /q "ad-computer-list-2\terraform.tfstate.*"
rmdir /s /q "ad-computer-list-2\.terraform"

echo -----------------------------

pause
