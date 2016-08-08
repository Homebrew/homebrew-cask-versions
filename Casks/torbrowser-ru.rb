cask 'torbrowser-ru' do
  version '6.0.3'
  sha256 '4d0e5e41e8daf1f70a082d09faa4333cd45fa3f50f1c6236fb0bb78e713cc1fe'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
