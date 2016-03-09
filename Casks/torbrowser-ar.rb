cask 'torbrowser-ar' do
  version '5.5.3'
  sha256 '37c8708b23f73949372204ae4708029d461c7228af5f17a9b65ee17f01cc40d4'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
