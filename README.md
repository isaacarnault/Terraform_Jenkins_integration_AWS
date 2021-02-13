[![isaac-arnault-terraform-jenkins.jpg](https://i.postimg.cc/XqYG160y/isaac-arnault-terraform-jenkins.jpg)](https://postimg.cc/tZ847fJX)

    • Programming: HCL (Terraform)
    • Repository: GitHub
    • Cloud: AWS
    • Database: Jenkins
    • Related gist: https://github.com/isaacarnault/terraform-jenkins/tree/master
  
### Gist writing, testing and debugging : 20 hrs

This gist is part of my `Cloud` series and is performed on a `Linux` OS.<br>
It focuses on `Terraform` and `Infrastructure as Code` (IaC).<br>
Make sure to get familiar with <a target="_blank" href="https://gist.github.com/isaacarnault/ed11132744fb3a1d554985477ef6cdcd">Terraform</a> before you take this gist.
You have two ways to deploy `Terraform`: either on your local machine, either in a remote virtual machine hosted on a 'Cloud' platform such as `AWS`.<br>

Throughout this gist, we will be using Terraform installed on our local machine.<br> 

We will learn how to deploy a `Terraform` infrastructure integrating with `Jenkins` and `Ansible`.

  | <b>Some useful resources</b><br>
. https://www.terraform.io/docs/cloud/index.html<br>
. https://www.terraform.io/docs/cloud/paid.html

<hr>
<b>Important</b>
The following gist was performed on `Terraform` v.0.13.3.<br>
If you use older versions, you may encounter interpolations warnings upon commands execution.<br>
These warnings shouldn't affect the infrastructure building.

For easy use of this gist:<br>

1. Open your Shell (ctrl + Alt + T)<br>
2. Clone this repository on your local machine where you want, could be on your Desktop:<br>

```r
$ cd Desktop
$ git clone https://gist.github.com/isaacarnault/6020ed7a7b177ad8c1ab9a285191669a
}
```
3. From the command line, go to the folder where the repository is hosted:<br>

4. Perform the below commands.

```r
$ terraform init
}
```
<details>
<summary>🔵 See output</summary>
<p>
  
[![isaac-arnault-terraform-1.png](https://i.postimg.cc/mrgryvFF/isaac-arnault-terraform-1.png)](https://postimg.cc/Wdxj2f82)

</p>
</details>

```r
$ terraform plan
}
```

<details>
<summary>🔵 See output</summary>
<p>
  
[![isaac-arnault-aws-2.png](https://i.postimg.cc/9FPF5md7/isaac-arnault-aws-2.png)](https://postimg.cc/tYTHFHmq)

</p>
</details>

```r
$ terraform apply -auto-approve
}
```

<details>
<summary>🔵 See output</summary>
<p>
  
[![isaac-arnault-terraform4.png](https://i.postimg.cc/8z1XkSY3/isaac-arnault-terraform4.png)](https://postimg.cc/PPRQKBTz)

</p>
</details>

<hr>
</b>Conclusion</b>
In this gist we've got a practical usage of Terraform for deploying a VPC on AWS.<br>
We've learned how to use Terraform with Atom editor for deploying the needed resources.
We've also learned how to integrate Jenkins with Terraform to automate this deployment.
This other repository that I've uploaded on GitHub contains all files ready for deployment:

### Related tags
    • AWS
    • AWS Console
    • Cloud computing
    • Terraform
    • Jenkins
    • Ansible
