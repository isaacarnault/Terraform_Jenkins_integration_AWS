#### Prerequisites

#### Step 1 - Installing Terraform (Linux)

## Let's install Terraform

```r
$ sudo su
$ cd
$ wget https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_linux_amd64.zip // download the latest available package
$ unzip terraform_0.13.3_linux_amd64.zip
$ rm -r terraform_0.13.3_linux_amd64.zip
$ mkdir terraform_bin // create a folder named 'terraform'
$ mv terraform downloads
```

<details>
<summary>🔵 See output</summary>
<p>
  
[![isaac-arnault-terraform-5.png](https://i.postimg.cc/SK2PTjB7/isaac-arnault-terraform-5.png)](https://postimg.cc/nsxTMVcC)

</p>
</details>

Update your path so you can call Terraform binary from anywhere in the machine<br>

```r
$ nano ~/.profile
```
Add the following code at the end of the codeblock<br>

```r
export PATH="$PATH:~/terraform"
```

<details>
<summary>🔴 See hint</summary>
<p>
  
[![isaac-arnault-terraform-6.png](https://i.postimg.cc/L5CBF3fq/isaac-arnault-terraform-6.png)](https://postimg.cc/LgPZzfxR)

</p>
</details>

To save the file and get back to the CLI, use `Ctrl + s` then `Ctrl + x`.<br>

To update your path to the current session, use :

```r
$ source ~/.profile
```
Let's check `Terraform` version to see if it was correctly installed and that we can call it from anywhere on the machine:

```r
$ terraform --version
```
<details>
<summary>🔵 See output</summary>
<p>
  
[![isaac-arnault-terraform-7.png](https://i.postimg.cc/sX3pBN4Q/isaac-arnault-terraform-7.png)](https://postimg.cc/1gYg2MTs)

</p>
</details>

<b>Let's finalize the installation of Terraform</b><br>
Print a colon-separated list of locations in your `PATH`.<br>

```r
$ echo $PATH
```

Move the `Terraform` binary to one of the listed locations. Here we use the following location: `usr/local/bin`.<br>

```r
$ mv terraform_bin/terraform /usr/local/bin
```

Close your `Terminal` window, relaunch a new window (Ctrl + T)<br>
Use the following commands to check if terraform was correctly installed and initialized:<br>

```r
$ sudo su
$ terraform -help
```

<details>
<summary>🔴 See hint</summary>
<p>
  
[![isaac-arnault-terraform-8.png](https://i.postimg.cc/FzBcBs53/isaac-arnault-terraform-8.png)](https://postimg.cc/YLQh47SC)

</p>
</details>

<b>Enable tab completion</b>

If you use either bash or ssh you can enable tab completion for Terraform commands. To enable autocomplete, run the following command and then restart your shell.<br>

```r
$ terraform -install-autocomplete
```

Here we are! We are ready to use `Terraform` for our `Infrastructure as Code` projects on our local machine.

#### Step 2 - Configure AWS access to Terraform

Log into your `AWS` account. If you don't have an account, create one: https://portal.aws.amazon.com/billing/signup#/start.<br>
You can access your console after Signing Up to AWS using this link: https://console.aws.amazon.com/console/home.<br>

Once logged into your `AWS` console, go to `IAM`.<br>
If you are new to AWS, please bypass all user configuration (green ticked marks below) for the sake of simplicity.<br>

<details>
<summary>🔵 See output</summary>
<p>
  
[![isaac-arnault-aws-1.png](https://i.postimg.cc/65HMJ3qg/isaac-arnault-aws-1.png)](https://postimg.cc/CzqGbwjs)

</p>
</details>

. Click on Users > Add user<br>

. Next: permissions > Create group: call it <b>admins_terraform</b>.<br>

. Filter policies: search for `AdministratorAccess` in the search bar.<br>

. Select the `AdministratorAccess` policy and click on 'Create group'.

<details>
<summary>🔵 See output</summary>
<p>
  
[![isaac-arnault-aws-3.png](https://i.postimg.cc/jSwQp4Gn/isaac-arnault-aws-3.png)](https://postimg.cc/nXxD7BVn)

</p>
</details>

. Next: tags. Use as key: resources and as Value: terraform<br>

. Next: review > create user > download the .csv file which contains security credentials for the user '
terraform_user'<br>

`Access key ID` and a `Secret access key` were provided to you by `AWS`.<br>

Be sure to keep these values in a secure location; you will use them in the next step.<br>

You can keep this window opened and open a new `AWS` console window from your browser.

<hr>
<b>Important</b>
Follow `AWS` security best practices by deleting this user and the group created after completing this gist, since all security parameters for this user weren't fulfilled for the sake of simplicity.<br>

#### Step 3 - Install AWS CLI
$ sudo apt-get update
$ sudo apt install awscli
Once completed, check the installed version <br>

$ aws --version

<details>
<summary>🔵 See output</summary>
<p>

[![isaac-arnault-terraform1.png](https://i.postimg.cc/CKz7htJF/isaac-arnault-terraform1.png)](https://postimg.cc/hJRTM2Hw)

</p>
</details>

Let's configure our 'AWS ClI'.<br>

```r
$ aws configure
```

When prompted, enter 'AWS Access Key ID' provided upon user creation.<br>
Do the same for 'Secret Access Key'.<br>
Default region name: 'us-east-1'<br>
Default output format: JSON


#### Step 4 - Install Atom and create Terraform's project workspace
We will use 'Atom' as our editor for building our Terraform project.<br>

1. Update the packages list and install the dependencies<br>

```r
$ sudo apt update
$ sudo apt install software-properties-common apt-transport-https wget
```

2. import the Atom Editor GPG key<br>

```r
$ wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -
```

3. enable the Atom APT repository<br>

```r
$ sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"
```

4. Install the latest version of Atom<br>

```r
$ sudo apt install atom
```

Once installed, Atom's icon should appear within your local applications.<br>

<details>
<summary>🔵 See output</summary>
<p>

[![isaac-arnaul-terraform-2.jpg](https://i.postimg.cc/sDLvFNBP/isaac-arnaul-terraform-2.jpg)](https://postimg.cc/nCvHBTGM)

</p>
</details>

Open the folder and launch Atom from this folder.<br>

```r
$ cd terraform
$ atom .
```

<details>
<summary>🔵 See output</summary>
<p>
  
[![isaac-arnault-terraform-5.jpg](https://i.postimg.cc/CxjYvPbx/isaac-arnault-terraform-5.jpg)](https://postimg.cc/bZNKrR67)

</p>
</details>

The application should instantiate automatically and reffering to the folder <b>terraform</b>.<br>
Before we create our workspace, we will install few packages.<br>
Click on 'Install a package' > 'Open installer' and search for 'language-terraform' > Install the package.<br>

<details>
<summary>🔵 See output</summary>
<p>
  
[![isaac-arnault-terraform-6.jpg](https://i.postimg.cc/nrjfq0HZ/isaac-arnault-terraform-6.jpg)](https://postimg.cc/fSNPN7tg)

</p>
</details>

Install also 'terraform-fmt' package.<br>

<details>
<summary>🔵 See output</summary>
<p>

[![isaac-arnault-terraform-7.jpg](https://i.postimg.cc/3x7JHQ8v/isaac-arnault-terraform-7.jpg)](https://postimg.cc/LnCMz7Z9)

</p>
</details>

If you go to Settings > packages, you'll see your newly installed packages.<br>

Now that all prerequisites have been fulfilled, let's jump onto Create_Terraform_Workspace section of this gist.
