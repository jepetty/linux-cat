sudo apt-get update
sudo apt-get install -y dotnet-sdk-8.0
dotnet tool install -g git-credential-manager

# Set this permanently for future sessions
echo "export PATH='$PATH:~/.dotnet/tools'" >> ~/.bashrc

# Set this for the current session
export PATH="$PATH:~/.dotnet/tools"
git-credential-manager configure
echo "export GCM_CREDENTIAL_STORE=cache" >> ~/.bashrc
export GCM_CREDENTIAL_STORE=cache

git config --global user.email = $1
git config --global user.name = $2