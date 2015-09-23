cask :v1 => 'torbrowser-fr' do
  version '5.0.3'
  sha256 'c263e8a8463b7567f60b46c67d878ccf90e2207ebd16cea27d384127da4537f1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
