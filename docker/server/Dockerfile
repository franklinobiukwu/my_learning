FROM ubuntu:latest

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y nginx openssh-server vim sudo wget && \
    mkdir /var/run/sshd && \
    echo "root:password" | chpasswd

# Expose SSH port
EXPOSE 22
# Expose HTTP port
EXPOSE 80

# Start SSH Server
CMD ["/usr/sbin/sshd", "-D"]
