cask 'torbrowser-tr' do
  version '6.0.3'
  sha256 'e4a5de5ecf2d8036846872c40a20d19938ee4e1a77da70dabfde6091d4051235'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
