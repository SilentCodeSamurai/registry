# Registry

Simple swarm stack for running Docker Registry v2.

## Usage

1. Clone the repository to the root directory:

    ```bash
    git clone <repository-url> /root/registry
    ```

2. Create the data directory for the registry:

    ```bash
    mkdir -p /root/registry/data
    ```

3. Install apache2-utils:

    ```bash
    sudo apt install apache2-utils
    ```

4. Create a password file for basic authentication:

    ```bash
    htpasswd -Bbn <user> <password> > /root/registry/registry.password
    ```

5. Create a .env file in /root/registry with the following content:

    ```env
     REGISTRY_SERVER_NAME=<your-server-name>
    ```

6. Ensure HTTPS SLL docker secrets are present:
    -   cert.crt
    -   cert.key

7. Deploy the stack
    ```bash
    /root/registry/deploy.sh
    ```

## Clean

clean.sh file is available. Running it will clean registry.
