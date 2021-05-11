# Terraform_AWS_Series
Terraform AWS Series repo is basically a set of practicing infra iac code . Which i had made for my practice and for others . I had added different part apart from code like Theoretical portion of particular terraform and AWS resource  . Hope it will help you  during your daily adventures in iAC world 

Basic 
While starting setup or praticing terraform .These things you need to do for infra setup to work .

1) Download Terraform 
  URL - https://www.terraform.io/downloads.html
  unzip it your choseable location 
  
2) CLI for particular provider like here we are using AWS cloud provider . So AWSCLI .
  URL - https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html
  
  Install AWS CLI 
  
3)Also create AWS account if not yet created .

4)In AWS account , please add one user in IAM services . Which will provide AWS configuration details via  excel sheet .

5)Best pratice is to create the bulk of code via version control .
if you dont have the same in your system .Please download Git .

5)After setting up Github . Create a repo and clone it in your local machine .
Right click in your chosed path --> git bash --> In open git window --> git clone https://github.com/Aadi0605/Terraform_AWS_Series.git 

6)After creation of your repo in your local machine . Create a Terraform folder near by to it and paste the terraform.exe file there .

7)open your cmd 
  move to particular path of cloned repo in local .
  check terraform and AWSCLI installed properly or not .
  For terraform --> terraform --version 
  For AWSCLI    --> aws --version 
  
8)start working on your command promt
    write command -- terraform
    if your code ready for infra creation . 
    use terraform commands starting from terraform init .
    
    Note - Always your configuration files must be in .tf format .
