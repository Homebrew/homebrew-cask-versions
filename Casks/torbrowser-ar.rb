cask :v1 => 'torbrowser-ar' do
  version '4.5.1'
  sha256 '36764414f05b3b932c8c026e6ec89923d6fc6702620e077084d5e0c55a3d328d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
