# Generic Single Server
This project will create a Kasm Workspaces single-server deployment cloud-init config.

# Pre-Configuration

### Domain Configuration
TODO

### API Tokens
TODO

### SSH Authorized Keys
TODO

# Terraform Configuration

1. Initialize the project

       terraform init

2. Open `deployment.tf` and update the variables. The variable definitions and descriptions
can be found in `module/variables.tf`
   

3. Verify the configuration

       terraform plan

4. Deploy

       terraform deploy


5. Login to the Deployment as an Admin via the domain defined e.g `https://kasm.contoso.com`. Single server installs
download all workspaces images during the install process so it may take ~15 minutes for the server to fully come online.
