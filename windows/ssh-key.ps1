# PowerShell script to start the SSH agent and add a key

# Set a variable for the SSH key path
$sshKeyPath = "$env:USERPROFILE\.ssh\ir_rsa"

# Check if the SSH key exists
if (-Not (Test-Path -Path $sshKeyPath)) {
    Write-Error "The specified SSH key does not exist: $sshKeyPath"
    exit 1
}

# Add the SSH key to the agent
Write-Output "Adding the SSH key to the agent..."
ssh-add $sshKeyPath

# Verify the keys added to the agent
Write-Output "Currently loaded keys in the SSH agent:"
ssh-add -l
