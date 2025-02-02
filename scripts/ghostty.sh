#!/bin/bash
sudo tee -a /etc/yum.repos.d/ghostty.repo << 'EOF'
[copr:copr.fedorainfracloud.org:pgdev:ghostty]
name=Copr repo for Ghostty owned by pgdev
baseurl=https://download.copr.fedorainfracloud.org/results/pgdev/ghostty/fedora-$releasever-$basearch/
type=rpm-md
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://download.copr.fedorainfracloud.org/results/pgdev/ghostty/pubkey.gpg
repo_gpgcheck=0
enabled=1
enabled_metadata=1
EOF
