# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "alfred",     "1.1.7"
github "chrome",     "1.1.2"
github "clojure",    "1.2.0"
github "ctags",      "1.0.0"
github "dnsmasq",    "1.0.1"
github "dropbox",    "1.2.0"
github "evernote",   "2.0.5"
github "foreman",    "1.1.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "go",         "1.0.0"
github "heroku",     "2.1.1"
github "homebrew",   "1.6.0"
github "hub",        "1.0.3"
github "hipchat",    "1.1.0"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "iterm2",     "1.0.6"
github "java"
github "jumpcut",    "1.0.0"
github "nginx",      "1.4.2"
github "nodejs",     "3.3.0"
github "openssl",    "1.0.0"
github "osx",	     "2.2.2"
github "phantomjs",  "2.0.2"
github "pkgconfig",  "1.0.0"
github "postgresql", "3.0.1"
github "pow",        "1.0.0"
github "python"
github "qt",	     "1.2.2"
github "rdio",       "1.0.0"
github "redis",      "2.1.0"
github "repository", "2.2.0"
github "ruby",       "6.7.2"
github "sonos",      "1.0.3"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "sysctl"
github "tmux",       "1.0.2"
github "transmission", "1.1.0"
github "vagrant",    "3.0.4"
github "vim",        "1.0.5"
github "virtualbox", "1.0.10"
github "vlc",        "1.0.5"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
