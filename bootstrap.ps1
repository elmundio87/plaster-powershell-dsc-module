pushd $PSScriptRoot

& .\paket install
& gem install bundler
& bundle install

popd
