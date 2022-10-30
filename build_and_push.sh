#!/bin/bash

docker build -t jforman/ansible:latest .

docker push jforman/ansible:latest 

