## Preparation

- Create `.config` file and declare your AWS account as below.

```
PROFILE=<profile>
SERIAL_NUMBER=arn:aws:iam::111122223333:mfa/<IAM UserName>
```

- `sh set_aws_credential.sh <OTP>`

- Replace `<YourRoleArn>` and `<YourName>` in main.tf appropriately.

- `terraform init`
