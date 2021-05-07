FROM fedora

RUN dnf upgrade-minimal --assumeyes \
    && dnf install --assumeyes --setopt=install_weak_deps=False wget \
    && update-ca-trust \
    && dnf clean all

