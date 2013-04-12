if command -v brew >/dev/null; then
  before_install set_up_brew_openssl
fi

set_up_brew_openssl() {
  if [ ! -d "$(brew --prefix openssl)" ]; then
    brew install openssl
  fi
  RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl) $RUBY_CONFIGURE_OPTS"
  export RUBY_CONFIGURE_OPTS
}
