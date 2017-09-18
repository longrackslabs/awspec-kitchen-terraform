!SLIDE subsection

# awspec kitchen terraform 

!SLIDE

## why infrastructure as code

- provide a codified workflow to create infrastructure
- expose a workflow for managing updates to existing infrastructure
- integrate with application code workflows (Git, SCM, code review)
- provide modular, sharable components for separation of concerns
- distribution of knowledge, enables self-service (and vacations)

!SLIDE

## intro to terraform

- `terraform` is used to build, change, and version infrastructure
- the overall goal is to safety, efficiency and predictability
- uses a human readable language to improve interpretation of infrastructure config
- makes reusing and extending existing infrastructure easy
- all configuration is captured in code
- `terraform` is open source

!SLIDE

## why terraform (company goals)

- unify the view of resources using infrastructure as code
- support the modern data center (IaaS, PaaS, SaaS)
- expose a way to safely and predictably change infrastructure
- provide a workflow that is technology agnostic
- manage anything with an API


!SLIDE

## intro to awspec

- `terraform` is used to build, change, and version infrastructure
- the overall goal is to safety, efficiency and predictability
- uses a human readable language to improve interpretation of infrastructure config
- makes reusing and extending existing infrastructure easy
- all configuration is captured in code
- `terraform` is open source

!SLIDE

## why awspec

- TBD

!SLIDE

## intro to kitchen

- TBD

!SLIDE

## why kitchen

- TBD

!SLIDE

## configuration syntax

- rspec
- inspec
- awspec

!SLIDE

## terraform config syntax: `general overview`

This is what `terraform's` domain-specific language looks like...

```markdown
variable "ami" {
  description = "the AMI to use"
}
```

...which is quite a bit easier to navigate than JSON:

```json
variable = [{
  "ami": {
    "description": "the AMI to use",
  }
}]
```

!SLIDE

## awspec syntax: `test cases`

!SLIDE

## main commands
- bundle exec kitchen converge
- bundle exec kitchen verify
- bundle exec kitchen destroy


!SLIDE

## commands: `bundle exec kitchen converge`

- execute changes to reach the desired state
- parallelizes changes wherever possible
- handles and recovers from transient errors safely
- moves from a current state to target state (delta approach)
  - updates existing resources when allowed
  - recreates existing when updates are not allowed

!SLIDE

## commands: `bundle exec kitchen verify`

## commands: `bundle exec kitchen destroy`

- destroys all running infrastructure
- does not touch infrastructure not managed by `terraform`

- note: `kitchen converge` can also remove parts of infrastructure (e.g. if you comment out your code)

!SLIDE

## example: `terraform destroy`

!SLIDE

## prep for lab exercise

- make sure you install
  - `terraform`
  - `kitchen`
  - `awspec`
- AWS credentials
  - retrieve your `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`

### Credentials - Option 1 - .aws/credentials
- The default location is $HOME/.aws/credentials on Linux and OS X, or "%USERPROFILE%\.aws\credentials" for Windows users.  See http://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/credentials.html
- When you create an AWS credentials file using the aws configure command, it creates a file with the following format:

```markdown
[default]
aws_access_key_id={YOUR_ACCESS_KEY_ID}
aws_secret_access_key={YOUR_SECRET_ACCESS_KEY}

[profile2]
aws_access_key_id={YOUR_ACCESS_KEY_ID}
aws_secret_access_key={YOUR_SECRET_ACCESS_KEY}
- each example has its own folder... please navigate into each folder to start the exercise

```

### Credentials Option 2 - direnv / .envars
- If you are using the [direnv](https://direnv.net/) utility, you should:
  * create a .envrc file (see .envrc.sample)
  * run `direnv allow` to set the environment variables

- TBD

!SLIDE

# exercise 1

- TBD

!SLIDE

# exercise 2

- TBD

!SLIDE

# exercise 3

- TBD

!SLIDE

# exercise 4

- TBD

!SLIDE

# exercise 5

- TBD

!SLIDE

# exercise 6

- TBD

!SLIDE

# exercise 7

- TBD
