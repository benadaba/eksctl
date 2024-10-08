#!/bin/bash

#install eksctl
#https://eksctl.io/installation/



read -p "Enter CLUSTER_NAME: "  CLUSTER_NAME
read -p "Enter REGION: "  REGION
read -p "Enter KEY_NAME: "  KEY_NAME
# read -p "Enter NODE_NAME: "  NODE_NAME


#CLUSTER_NAME=my-cluster
#REGION=eu-west-2
NODE_NAME=Linux-nodes
#KEY_NAME=datapandas-devops-keypair

# Set AWS credentials before script execution

aws sts get-caller-identity >> /dev/null
if [ $? -eq 0 ]
then
  echo "Credentials tested, proceeding with the cluster creation."

    # Creation of EKS cluster
      eksctl create cluster \
        --name $CLUSTER_NAME \
	    --version 1.23\
	    --region $REGION \
	    --nodegroup-name $NODE_NAME \
	    --nodes 2 \
		--nodes-min 1 \
		--nodes-max 4 \
		--node-type t3.micro \
		--node-volume-size 8 \
		--ssh-access \
		--ssh-public-key $KEY_NAME \
		--managed

if [ $? -eq 0 ]
then
	echo "Cluster Setup Completed with eksctl command."
	else
	echo "Cluster Setup Failed while running eksctl command."
		fi
		else
		echo "Please run aws configure & set right credentials."
		echo "Cluster setup failed."
		fi

#get kube config file aws eks update-kubeconfig --region region-code --name my-cluster


#to destroy issue this command:
# eksctl delete cluster <NAME YOU GAVE TO THE CLUSTER> 
# eg: eksctl delete cluster  cluster-with-eksctl
# eksctl delete cluster  ghaClusterAutomated --region eu-west-2
