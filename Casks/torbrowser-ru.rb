cask 'torbrowser-ru' do
  version '6.0'
  sha256 '7d30576ec9c49f61ebf56205c39bcb602bccf8d2c50c99bf461b43aebe2ff912'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
