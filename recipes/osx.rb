include_recipe 'homebrew'

casks = %w(
  virtualbox
  virtualbox-extension-pack
  phantomjs
  mongodb
  chromedriver
  powershell
  hammerspoon
  mysql-shell
  google-cloud-sdk
  intellij-idea
  pycharm
  neo4j
  cyberduck
  amethyst
  vlc
  the-unarchiver
  visual-studio-code
  spectacle
  alfred
  kindle
  minikube
  iterm2
  postman
  charles
  screenflick
  dropbox
  slack
  tunnelblick
  vagrant
  docker
  google-chrome
  firefox
  xquartz
)

packages = %w(
  asciidoc
  azure-cli
  cdrtools
  clingo
  cython
  docbook
  easy-tag
  exercism
  flac
  fpp
  freerdp
  fribidi
  go-bindata
  gpatch
  gpgme
  graphite2
  gsettings-desktop-schemas
  gtk+3
  httpd
  id3lib
  iftop
  isl
  jsonnet
  kops
  kubectx
  mosh
  mtr
  neon
  nethogs
  nload
  npth
  opencore-amr
  openjpeg
  openssl@1.1
  opus
  perl
  pipenv
  qt
  rtmpdump
  rubberband
  snappy
  source-highlight
  speex
  taglib
  theora
  travis
  unbound
  utf8proc
  vde
  wavpack
  webp
  x265
  yq
  golang
  etcd
  timewarrior
  bazel
  terraforming
  ranger
  cassandra
  watchman
  wdiff
  duck
  cadaver
  restic
  pyenv-virtualenv
  bower
  dvm
  ledger
  git-series
  ack
  apr
  apr-util
  aspcud
  aspell
  atk
  atkmm
  augeas
  autoconf
  automake
  autossh
  aws-cfn-tools
  aws-elasticache
  awscli
  bash
  bash-completion
  bats
  bazaar
  bazel
  bdw-gc
  blackbox
  boost
  boost-build
  bsdiff
  bup
  c-ares
  cairo
  cairomm
  camlp4
  chrome-cli
  clasp
  cloog018
  cloud-watch
  cmake
  consul-template
  coreutils
  crunch
  ctags
  cunit
  curl
  d-bus
  dbus
  dep
  dialog
  dirmngr
  dnsmasq
  docker
  docker-machine
  docker-machine-driver-xhyve
  dos2unix
  dpkg
  duck
  dvm
  ec2-ami-tools
  ec2-api-tools
  editorconfig
  eigen
  elasticsearch
  elinks
  emacs
  enscript
  entr
  exa
  faad2
  ffmpeg
  findutils
  fish
  fontconfig
  fping
  freetype
  fswatch
  fzf
  gawk
  gdbm
  gdk-pixbuf
  geckodriver
  geoip
  gettext
  ghc
  giflib
  gist
  git
  git-extras
  git-lfs
  git-when-merged
  gitversion
  glib
  glibmm
  gmp
  gnu-getopt
  gnu-indent
  gnu-sed
  gnu-tar
  gnupg
  gnupg2
  gnutls
  go
  goaccess
  gobject-introspection
  gradle
  graphviz
  grep
  gringo
  groovy
  gsl
  gtk+
  gtkmm
  guile
  harfbuzz
  hicolor-icon-theme
  highlight
  htop-osx
  httpie
  hub
  hugo
  icu4c
  ilmbase
  imagemagick
  intltool
  iproute2mac
  irssi
  jansson
  jemalloc
  jpeg
  jq
  jsonpp
  juju
  kqwait
  kubernetes-cli
  kubernetes-helm
  lame
  leptonica
  little-cms
  lsof
  lua
  luajit
  lynx
  lzo
  make
  makedepend
  maven
  mitmproxy
  mobile-shell
  mono
  msgpack
  mutt
  n
  ncdu
  neovim
  nettle
  nghttp2
  nginx
  nmap
  node
  nvm
  ocaml
  ocamlbuild
  oniguruma
  opam
  openexr
  openssl
  openvpn
  p11-kit
  p7zip
  packer
  pango
  pangomm
  parallel
  patchutils
  pcre
  pcre2
  pidof
  pinentry
  pixman
  pkg-config
  popt
  protobuf
  psgrep
  pssh
  pth
  pyenv
  pyenv-virtualenvwrapper
  python
  python3
  qemu
  rbenv
  rdesktop
  re2c
  readline
  reattach-to-user-namespace
  recode
  redo
  rpm2cpio
  rsync
  ruby-build
  rust
  s-lang
  scons
  selenium-server-standalone
  spdylay
  sphinx-doc
  sqlite
  squid
  neovim
  ssh-copy-id
  sshuttle
  stow
  subversion
  terminal-notifier
  terraform
  tesseract
  texi2html
  the_silver_searcher
  tig
  tmux
  tokyo-cabinet
  tree
  unibilium
  unixodbc
  vault
  vim
  watch
  wemux
  wget
  wiggle
  winexe
  wireshark
  x264
  xhyve
  xml-coreutils
  xmlstarlet
  xvid
  xz
  yajl
  yarn
  yasm
)

package "Instll 2 packages at once" do
  action :install
  ignore_failure true
  package_name %( confuse colordiff )
end

packages.each do |p|
  package p do
    action :install
    ignore_failure true
  end
end

homebrew_tap 'azure/draft'
package 'azure/draft/draft' do
  action :install
  ignore_failure true
end

homebrew_tap 'habitat-sh/habitat'
package 'hab' do
  action :install
  ignore_failure true
end

casks.each { |c| homebrew_cask c }