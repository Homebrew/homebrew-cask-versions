cask 'torbrowser-ko' do
  version '6.0.1'
  sha256 '22ce3b9eb67995b01cc110029bfdd866118cfc235c195a8e5a8717dd502ced1e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
