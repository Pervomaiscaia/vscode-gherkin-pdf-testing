# vscode-gherkin-pdf-testing

## Infrastructure Setup

This document lists the steps to perform in order setup development infrastructure.

### Git Installation

To work with GitLab in Windows environment, you need to install Git software that is located at the following URL: [git](https://git-scm.com/download/win).
Follow the wizard and enable the following settings:

### Adjust your PATH environment

Use Git from the Windows Command Prompt (Recommended)

### Choosing HTTPS transport backend

Use the native Windows Secure Channel library (Required)

### Configuring the line ending conversions

Checkout Windows-style, commit Unix-style line endings (Required)

## Git Configuration

### Specify the name of the user

>> Note: It is not required to use the same name as in Stryker Active Directory. If the Active Directory includes some additional information, such as (Contractor), you can omit it here.

```bash
git config --global user.name "First Last"
```

### Specify the email address of the user

Note: The email address should match the Stryker Active Directory. Otherwise, you will not be able to push changes to the server.

```bash
git config --global user.email "first.last@gmail.com"
```

