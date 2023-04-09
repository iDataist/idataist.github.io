brew uninstall openssl
arch -x86_64 brew install openssl@1.1
arch -x86_64 brew info openssl@1.1
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
arch -x86_64 gem install eventmachine -v '1.2.7' -- --with-cppflags=$CPPFLAGS --with-ldflags=$LDFLAGS
bundle install

bundle exec jekyll serve --livereload
