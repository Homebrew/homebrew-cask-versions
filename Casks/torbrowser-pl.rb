cask :v1 => 'torbrowser-pl' do
  version '5.0.4'
  sha256 '27ec131d89d2671c12aa576609a6d9eb2e00f309aa04137dee4dcc67c5252e10'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
