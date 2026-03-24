provider "google" {
  project = var.project_id  #Add your project ID here
  region  = var.region #Choose your Region and zone 
  zone    = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name         = "grocy-here-vm" #you can change VM name here
  machine_type = "e2-micro" #You can change VM type (this is most cheapest one)
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {} # public IP
  }

  metadata_startup_script = <<EOF
    #!/bin/bash
    set -a
    exec > /var/log/startup-script.log 2>&1
    
    # Update packages
    apt-get update -y

    # Install nmap
    apt-get install nmap -y
    
    # Install Docker
    apt-get install -y docker.io

    # Start Docker
    systemctl start docker
    systemctl enable docker

    # Pull your Docker image
    docker pull metejas/grocery-project:latest

    # Run container (IMPORTANT PART) (We will use docker compose to run for now)
    # docker run -d -p 80:80 --name game-container metejas/grocery-project:latest
    
    # Install Docker Compose if missing
    if ! docker compose version &> /dev/null
        then
            echo "Installing Docker Compose..."
            sudo mkdir -p /usr/local/lib/docker/cli-plugins
            sudo curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 \
            -o /usr/local/lib/docker/cli-plugins/docker-compose
            sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
        fi
            
   #Now creting our application directory where it will be installed
   mkdir -p /home/me_tejaskapade/app
   cd /home/me_tejaskapade/app

    if [ ! -d ".git" ]; then
      git clone https://github.com/tejas-kapade/Grocery-Management-Cloud/
    else
      git pull
    fi
            
   cd Grocery-Management-Cloud
   export DOCKER_API_VERSION=1.41

   docker compose down
   docker compose up -d

   nmap localhost
   echo "___________________________________________________________________________________________________________"
   echo "Grocy-Here application has been successfully installed and now available at port 80 of this machine...!!!"
  EOF

  tags = ["http-server"]
}

# Firewall rule to allow port 80
resource "google_compute_firewall" "allow_http" {
  name    = "allow-http-2048"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags = ["http-server"]

  source_ranges = ["0.0.0.0/0"]
}