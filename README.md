## Install EKS Kubernetes cluster with eksctl tool.

### Follow the prompts to set your cluster up


Make to sure to you have aws credentials on your machine. 
### Option 1 Export your credentials into your environment: 
https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html

```
export AWS_ACCESS_KEY_ID=1243434234
export AWS_SECRET_ACCESS_KEY=erwqrer/K7MDENG/erqrwer
export AWS_DEFAULT_REGION=us-west-2
```

### Option 2 use `aws configure` Export your credentials into your environment:
https://docs.aws.amazon.com/cli/v1/userguide/cli-configure-files.html

```
aws configure
```


### Install EKS eksctl by the installation instructions here : https://github.com/eksctl-io/eksctl/tree/v0.216.0  
For example

#### MAC /homebrew
```
brew tap weaveworks/tap
brew install weaveworks/tap/eksctl
```


#### Windows / chocolatey
For Windows
chocolatey
```
choco install eksctl
```


    
#### and follow the prompts to install it.   


TO DELETE THE CLUSTER WHEN DONE USE THIS COMMAND:
### eksctl delete cluster  ghaClusterAutomated --region eu-west-2
