cask 'torbrowser-pt' do
  version '5.5.4'
  sha256 '75b47da9e348d9ddcce7c3d597aa90edcd0312c0d67345a9a84b05671dde111a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
