#!/usr/bin/env bash

testTerraform () {
    terraform init
    terraform plan
    echo "yes" | terraform apply
    echo "yes" | terraform destroy
}

echo "Running the connections verification."
cd 00-connections
testTerraform
cd ..

echo "Running the initialization verification."
cd 01-initialization
testTerraform
cd ..

echo "Running general network resources verification."
cd 02-general-resources
testTerraform
cd ..

echo "Running general resources and using variables."
cd 03-variables
testTerraform
cd ..

echo "Done"