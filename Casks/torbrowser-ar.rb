cask 'torbrowser-ar' do
  version '6.0.5'
  sha256 'e9fdad13aec3679a00af0614474877b856e59c5b965bb88107ca4dcb3a9923c9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
