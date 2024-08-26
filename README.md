## Install EKS Kubernetes cluster with eksctl tool.

### Follow the prompts to set your cluster up


Make to sure to you have aws credentials on your machine. 
### Option 1 Export your credentials into your environment: 
https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html

```
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=us-west-2
```

### Option 2 use `aws configure` Export your credentials into your environment:
https://docs.aws.amazon.com/cli/v1/userguide/cli-configure-files.html

```
aws configure
```

and follow the prompts
