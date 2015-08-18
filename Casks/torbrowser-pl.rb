cask :v1 => 'torbrowser-pl' do
  version '5.0.1'
  sha256 '981c61ccbc3713732bfc7593d6b09eef714adcac0b739796a5886d6330b1b4ba'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
