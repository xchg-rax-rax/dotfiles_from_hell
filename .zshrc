# Example aliases
alias coutlines="find . -type f | xargs cat | wc -l"
alias rrun="rustc $1.rs && ./$1"
# fuck you AT&T
alias objdump="objdump -M intel"
alias upper="tr '[:lower:]' '[:upper:]' | cat"
alias lower="tr '[:upper:]' '[:lower:]' | cat"
alias msf="msfconsole"
alias clpbrd='xclip -selection clipboard'
# Offsec ssh fixes
alias ossh='ssh -o MACs=hmac-sha2-256 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" '
alias oscp='scp -o MACs=hmac-sha2-256 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" '

# set up vi mode
bindkey -v
bindkey '^R' history-incremental-search-backward

# fix ghidra java gui error
export _JAVA_AWT_WM_NONREPARENTING=1

# pretty stuff
neofetch
echo "\nWHEN YOU HAVE A SET OF CREDENTIALS TRY THEM LITERALLY EVERYWHERE\n"
eval $(thefuck --alias)

# set browser
export BROWSER=firefox

# pyenv stuff
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# environmental variables
CUDA_HOME=/opt/cuda
PATH="$PATH:/home/jhon/.dotnet/tools:/home/jhon/.local/bin/:/opt/Xilinx/Vivado/2022.1/bin:$HOME/monero/build/Linux/_HEAD_detached_at_v0.18.1.0_/release/bin/:/opt/firefox-nightly"
PATH="/home/jhon/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jhon/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jhon/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jhon/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jhon/perl5"; export PERL_MM_OPT;

