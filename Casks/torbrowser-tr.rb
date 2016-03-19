cask 'torbrowser-tr' do
  version '5.5.4'
  sha256 'e1d5390f6710466c3efd00355c23b4a3a764acd1535cdb0e68c67128eb633764'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
