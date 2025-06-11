FROM fedora:38

RUN curl  http://netfree.link/dl/unix-ca.sh | sh && update-ca-trust && \
    dnf -y --setopt=sslverify=false update && \
    dnf -y --setopt=sslverify=false install \
		ca-certificates \
        tcsh \
        csh \
        util-linux \
        procps-ng \
        openssh-server \
        openssh-clients \
        fontconfig \
		procps-ng \ 
		file \ 
		hostname \
        google-noto-sans-fonts && \
        dnf clean all && \
		mkdir -p /var/run/sshd



# Optional: default shell
CMD ["/bin/bash"]
