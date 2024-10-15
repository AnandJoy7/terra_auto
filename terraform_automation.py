import os
import subprocess
import sys

# Function to run a command and handle output
def run_command(command):
    try:
        print(f"Running command: {command}")
        result = subprocess.run(command, shell=True, check=True, text=True, capture_output=True)
        print("Output:\n", result.stdout)
        return result.stdout
    except subprocess.CalledProcessError as e:
        print(f"Error: {e.stderr}")
        sys.exit(1)

# Set the directory where your Terraform configuration is located
terraform_directory = './child_module'  # Update this path accordingly

# Change to the Terraform directory
os.chdir(terraform_directory)

# Initialize Terraform
run_command("terraform init")

# Run Terraform plan
plan_output = run_command("terraform plan")

# Save the plan output to a file
with open("terraform_plan_output.txt", "w") as f:
    f.write(plan_output)
    print("Plan output saved to terraform_plan_output.txt")

# Automatically apply the plan
apply_output = run_command("terraform apply -auto-approve")
print("Terraform apply completed.")
