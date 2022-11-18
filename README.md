# Deploy a simple Discourse web app no AWS EC2

## Step 1: Launch an EC2 instance on AWS
For a fully functional website with 1000’s of users, at least a `t3a.small` instance with 2 GB of RAM memory and 2 Virtual cpus, should be utilized. For the current example, a free `t2.micro` instance with 1 GB RAM and 1 Vcpu, with added 20 gb memory is used.

## Step 2: Get a domain from Route 53
Purchase a domain name from Route 53 service on AWS and add **public IPV 4 address** of the EC2 instance to the domain.

## Step 3: Add email and domain identities at Amazon SES and get Simple Mail Transfer Protocol (SMTP) settings
To enable discourse to use Amazon SES, one email (as admin) and one domain (as from email) should be added as verified identities at SES. Also, create a SMTP credentials to access the SMTP interface. These will be needed for discourse setup.

## Step 4: Use CloudShell to SSH through the EC2 and run the setup file
First uplaod the `.pem` file which was created when launching EC2 instance into the CloudShell. Then copy the `discourse_deploy_aws.sh` file into the instance:
```
scp -i key_file.pem discourse_deploy_aws.sh ubuntu@ec2-18-222-146-170.us-east-2.compute.amazonaws.com:~/.
```

Then run `discourse_deploy_aws.sh` as follows:

```
chmod u+x ./discourse_deploy_aws.sh
./discourse_deploy_aws.sh
```





