#!/usr/bin/env bash

testTerraform () {
    terraform init
    terraform plan
    terraform apply
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

echo "Running the  verification."
cd 02-static-ip
testTerraform
cd ..
