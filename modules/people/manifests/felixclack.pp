class people::felixclack {
  include alfred
  include chrome
  include clojure
  include ctags
  include dropbox
  include evernote
  include heroku
  include hipchat

  include iterm2::dev
  include iterm2::colors::solarized_dark

  include jumpcut
  include osx::software_update
  include postgresql
  include pow
  include python
  include qt
  include rdio
  include redis
  include sonos
  include tmux
  include transmission
  include vagrant
  include virtualbox

  include vim
  file { "${vim::vimrc}":
    target  => "/Users/${::boxen_user}/dotfiles/vim/vimrc.symlink"
  }

  include vlc

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/Code"
  $dotfiles = "${my}/dotfiles"
  
  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'felixclack/dotfiles',
    require => File[$my]
  }

  class { 'ruby::global':
    version => '2.0.0'
  }

  ruby::gem { "bundler for 2.0.0":
    gem     => 'bundler',
    ruby    => '2.0.0',
    version => '~> 1.2.0'
  }
}

