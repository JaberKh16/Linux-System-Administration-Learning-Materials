#!/bin/bash

# This script installs MySQL on a Linux system using DNF package manager.
#!/bin/bash

set -e  # Exit immediately on unhandled errors

handle_error() {
    echo "❌ Error occurred in script at line $1."
    exit 1
}

trap 'handle_error $LINENO' ERR

install_mysql() {
    echo "🔄 Installing MySQL..."
    sudo dnf update -y
    sudo dnf install -y mysql-server
    echo "✅ MySQL installation complete."
}

enable_mysql() {
    echo "🔄 Enabling MySQL to start on boot..."
    sudo systemctl enable mysqld
    echo "✅ MySQL is enabled to start on boot."
}

start_mysql() {
    echo "🔄 Starting MySQL service..."
    sudo systemctl start mysqld
    echo "✅ MySQL service started."
}

# Main execution
if !install_mysql; then
    echo "❌ MySQL installation failed. Exiting."
    exit 1
fi
if !enable_mysql; then
    echo "❌ Enabling MySQL failed. Exiting."
    exit 1
fi
if !start_mysql; then
    echo "❌ Starting MySQL service failed. Exiting."
    exit 1
fi



# Optional status check
echo "ℹ️  MySQL status:"
sudo systemctl status mysqld --no-pager
