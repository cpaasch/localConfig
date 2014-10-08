##################
# BASH-aliases
##################
alias ll='ls -l'

##################
# Specific aliases
##################


# GIT
alias gk='gitk -n 100'
alias gc='git commit -s'
alias gcf='git add -u ; git commit -s --fixup=HEAD ; git rebase --autosquash -i HEAD~2'
alias gcp='git cherry-pick -s'
alias gr='git rebase -i'
alias gp='git push'
alias gpf='git push --force'
alias glb='git log --format="%h (%s) %an"'

# MAKE
alias makex86new='nice -n 5 make -j 3 O=../build_mtcp_36_x86'
alias makerpi='nice -n 5 make -j 3 ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabi- O=../build_mptcp_rpi'
alias makeuml='nice -n 5 make -j 3 ARCH=um O=../build_mptcp_uml'
alias makeumlnn='nice -n 5 make -j 3 ARCH=um O=../build_net-next_uml'
alias makenetkit='nice -n 5 make -j 3 ARCH=um SUBARCH=x86_64 O=../build_mptcp_netkit'
alias makemptcp='nice -n 5 make -j 3 O=../build_mptcp'
alias makekvm='nice -n 5 make -j 3 O=../build_mptcp_kvm'
alias make32kvm='nice -n 5 make ARCH=i386 -j 3 O=../build_mptcp_32kvm'
alias make32kvmnn='nice -n 5 make ARCH=i386 -j 3 O=../build_net-next_32kvm'
alias makenn='nice -n 5 make -j 3 O=../build_net-next'
alias makekvmnn='nice -n 5 make -j 3 O=../build_net-next_kvm'
alias makens3='nice -n 5 make ARCH=sim -j 3'

# KDE
alias xopen='xdg-open'
