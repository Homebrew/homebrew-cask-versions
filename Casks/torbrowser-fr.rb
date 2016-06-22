cask 'torbrowser-fr' do
  version '6.0.2'
  sha256 '16b61b28dae53196a27916349c8c7a2f068fbf938970ba1d967626b80207b6db'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
