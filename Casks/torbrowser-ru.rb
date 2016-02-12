cask 'torbrowser-ru' do
  version '5.5.2'
  sha256 'bb7d8ecc610e9f03a7d9bbd7883d72f0ca66beb7b19f2dbf2d237a9b491118bd'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
