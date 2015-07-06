cask :v1 => 'torbrowser-ru' do
  version '4.5.3'
  sha256 '3c494888267211d1e167fd08c071ae3ea15a43efccd1baef242fccf9e7e713f2'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
