<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>


<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

You will need the following tools to start your project
* [terraform](https://developer.hashicorp.com/terraform/downloads)
* [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
* [git](https://git-scm.com/downloads)


### Installation

_Below is an example of how you can instruct your audience on installing and setting up your app. This template doesn't rely on any external dependencies or services._

1. Clone the repo
   ```sh
   git clone https://github.com/ukulakouskiwork/upwork-event-hub-terraform.git
   ```
2. you need to login to your account with az cli
   ```sh
   az login
   ```
3. You need to fill in the variables that are in the file variables.tf

4. The following commands are executed
   ```sh
   terraform init
   terraform plan
   terraform apply
   ```
5. Check the settings in your [azure portal](http://portal.azure.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
