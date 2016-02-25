# up to you (me) if you want to run this as a file or copy paste at your leisure

# homebrew
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  command -v apt-get >/dev/null 2>&1 && {
    echo "Apt-Get Found installing the essentials" >&2;
    sudo apt-get install -y git vim htop
  }

  command -v yum >/dev/null 2>&1 && {
    echo "Apt-Get Found installing the essentials" >&2;
    sudo yum install -y git vim
  }
elif [[ "$OSTYPE" == "darwin"* ]]; then
  ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
  ./brew
fi

# Install tab complete for git
curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
