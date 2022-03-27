FROM rockylinux/rockylinux:latest
ENV ACCEPT_EULA=y
RUN curl https://packages.microsoft.com/config/rhel/8/prod.repo > /etc/yum.repos.d/msprod.repo && \  
    dnf -y install mssql-tools unixODBC-devel && \
    echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile && \ 
    echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc && \ 
    echo 'alias ll="ls -l"' >> ~/.bashrc 
CMD ["/usr/sbin/init"]
 
