cask 'torbrowser-fr' do
  version '5.5.3'
  sha256 '0dfebd49ace909d9b45b05bad41b0ca7b2127a91d54bee3cdd36ab1c409571b5'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
