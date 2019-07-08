    sudo apt-get purge texlive* -y
    rm -rf /usr/local/texlive and rm -rf ~/.texlive*
    rm -rf /usr/local/share/texmf
    rm -rf /var/lib/texmf
    rm -rf /etc/texmf
    sudo apt-get remove tex-common --purge -y
    rm -rf ~/.texlive*
