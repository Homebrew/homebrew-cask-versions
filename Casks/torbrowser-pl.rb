cask 'torbrowser-pl' do
  version '6.0.5'
  sha256 'ea00ef6da19f8c52c32af5b5b21f389610eaea2751f602ef9749a043de6a807a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
