# Scripts for installing tools in Github Codespaces

## Overwiev 

This repository contains bash scripts used to install the software tools needed to work in github codespaces. <br>
The code should work equally well on most Linux distributions and potentially on macOS as well, but it is provided as-it-is without any guarantees.

## Important
The bash scripts are a legitimate way to install software components. I used to use them almost exclusively when I started working with github codespaces. <br>
However, I believe that using `nix` is the better way to do that. It is purely functional package manager, that will handle most of installation operations automatically for you. <br>

To learn more check out the [official documentation]("https://nix.dev/manual/nix/2.18/introduction") or some youtube video.



## How to use
To install any of the available tools, simply run the corresponding installation script (.bash file). <br>
For example to install terraform: <br>
`bash install_terraform.bash` <br>
And to remove it: <br>
`bash remove_terraform.bash`


## List of available scripts
1. Gcloud  
2. Terraform
3. Terragrunt
4. R
5. pyenv
6. nix