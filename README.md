# awsso
A small ad-hoc script that wraps AWS SSO and aws-sso-util for my shell luxury

⚠️ This is a very ad-hoc-y script. don't expect something awesome. I am okay with its inconveniences :D

1. Login to SSO profiles by wrapping `aws-sso-util`
2. Export the temp SSO Credentials to `~/.aws/credientals` (useful when wanting a local docker container to have AWS Access)
3. Setup AWS_PROFILE on shell init with the last used sso profile.


## Setup
```shell
curl -o- -s https://raw.githubusercontent.com/sherifabdlnaby/awsso/master/setup.sh | bash
```


Help:
```text
Usage:
    awsso [OPTION] | awsso <sso-profile>
OPTIONS:
    --help, -h:    Show this help and exit
    --setup:       Setup AWS SSO config
    --logout:      Logout of All SSO Sessions
    --list:        List your SSO Roles
    --populate:    Populate AWS Config with all your SSO roles
Example:
    awsso sso-profile-1
```