cask :v1 => 'torbrowser-fr' do
  version '4.5.3'
  sha256 '2ad7c0d276086973c3c795722f68677abfc623e2054c4e689bc3ba6dedcd44a9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
