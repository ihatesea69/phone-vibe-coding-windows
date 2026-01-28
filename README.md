# ☁️ Phone Vibe Coding: Windows Dev Box

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=flat&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=flat&logo=amazon-aws&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=flat&logo=windows&logoColor=white)

> **Your instant, Terraform-managed Cloud Windows Environment for Vibe Coding from anywhere.**

Turn your Android phone (or any device) into a powerful Windows development workstation in minutes.

---

## ✨ Features

- **🚀 One-Click Deploy**: Fully automated provisioning with Terraform.
- **🔒 Secure by Design**: Dedicated VPC, private subnet options, and RDP IP whitelisting.
- **🛠️ Battery Included**: Pre-installed with:
  - 🎨 VS Code
  - 🌐 Google Chrome
  - 📦 Git
  - 🗜️ 7-Zip
- **🔑 Auto-Key Management**: Zero-hassle password retrieval via generated keys.

## 🚀 Quick Start

### Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed.
- [AWS CLI](https://aws.amazon.com/cli/) installed.
- An AWS Account.

### Installation

1.  **Clone the Repo**

    ```bash
    git clone https://github.com/YOUR_USERNAME/phone-vibe-coding-windows.git
    cd phone-vibe-coding-windows
    ```

2.  **Authenticate**

    ```bash
    aws login
    ```

3.  **Deploy**

    ```bash
    terraform init
    terraform apply
    ```

    _Type `yes` to confirm._

4.  **Connect**
    - Get the `instance_public_ip` from the output.
    - Decrypt your password using the generated `vibe-key.pem` in `AWS Console > Connect > RDP`.
    - Connect via **Microsoft Remote Desktop** app using `Administrator` and your password.

## 🧹 Cleanup

Don't forget to destroy resources to save costs!

```bash
terraform destroy
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

_Built for the Vibe Coding community._
