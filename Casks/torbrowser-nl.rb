cask 'torbrowser-nl' do
  version '5.0.5'
  sha256 '2118031af1d63c0f23ef7bbaa1ea9e640f1410d32cd2b24129301bef483d4b4d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
