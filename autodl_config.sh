# install zsh
sudo apt update && sudo apt upgrade -y
sudo apt install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://install.ohmyz.sh/)"

# append conda into .zshrc
cat <<'EOF' >> /root/.zshrc
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/root/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/root/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/root/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/root/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
EOF

# disk usage display command
echo 'source /etc/autodl-motd' >> /root/.zshrc

# append network settings into .zshrc
echo 'source /etc/network_turbo' >> /root/.zshrc
