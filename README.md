# Remote Server Management Scripts

This repository contains useful shell scripts for remote server management. These scripts are designed to automate various tasks, ensuring smooth operation and monitoring of your server infrastructure. Below are the details for each script and instructions on how to use them.

## Scripts:

### 1. `container-check.sh`

This script checks the status of Docker containers running on the specified server. It provides an overview of running containers, helping you monitor their health and performance.

Usage:
```bash
chmod +x container-check.sh
./container-check.sh
```

### 2. `service-check.sh`

`service-check.sh` is used to monitor specific services on your server. It verifies whether essential services are up and running, allowing you to quickly identify any service failures.

Usage:
```bash
chmod +x service-check.sh
./service-check.sh
```

### 3. `test-ssh.sh`

`test-ssh.sh` script tests the SSH connection to your server. It's crucial for ensuring that you can establish a secure connection to your server instances.

Usage:
```bash
chmod +x test-ssh.sh
./test-ssh.sh
```

## Folder Structure:

- **Staging:**
  - `staging/container-check.sh`
  - `staging/service-check.sh`
  - `staging/test-ssh.sh`

- **Production:**
  - `production/container-check.sh`
  - `production/service-check.sh`
  - `production/test-ssh.sh`

## Instructions:

1. **Clone the Repository:**
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Set Permissions:**
   Ensure the scripts are executable:
   ```bash
   chmod +x staging/*.sh
   chmod +x production/*.sh
   ```

3. **Set Environment Variables:**
   Create a `.env` file in each environment folder (`staging` and `production`) and set the required environment variables such as SSH credentials.

   Example `.env` file:
   ```
   SSH_USERNAME="your_ssh_username"
   SSH_HOST="your_ssh_host"
   SSH_PORT="your_ssh_port"
   SSH_KEY_PATH="path/to/your/private_key"
   ```
   Set permission for .env file

   ```bash
   chmod 600 .env  # Ensure your SSH private key has the correct permissions
   ```

4. **Run the Scripts:**
   Execute the scripts based on your requirements and monitor the output for any issues.

   ```bash
   ./staging/container-check.sh
   ./production/service-check.sh
   ```

Feel free to modify the scripts or the README according to your specific use case and requirements. Happy scripting!