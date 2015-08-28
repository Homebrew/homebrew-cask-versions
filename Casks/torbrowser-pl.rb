cask :v1 => 'torbrowser-pl' do
  version '5.0.2'
  sha256 '7249567189f9421264ff7fbac558ebb1f2ba3520b21b20bc1a0d9a63ea55a3d8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
