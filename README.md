# Terraform create instance in AWS
Simple terraform code for creating ubuntu instance in AWS
 
## pre-requirements

- Install **Terraform**
    - Download and install accordingly to your OS as described here : https://www.terraform.io/downloads.html


## How to run the code
1. Open Command Line Interpreter: 

 OS system | Operation
 ------------ | -------------
| Windows | Start menu -> Run and type cmd |
| Linux  |Start terminal |
| macOS | Press Command - spacebar to launch Spotlight and type "Terminal," then double-click the search result. |

2. Run the following commands:
```
    git clone https://github.com/yaroslav-007/AWS-provider.git
    cd AWS-provider
```
Populate access key and secret key  **main.tf**
```
    terraform init
    terraform plan
    terraform apply
```
