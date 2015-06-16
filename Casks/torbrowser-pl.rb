cask :v1 => 'torbrowser-pl' do
  version '4.5.2'
  sha256 '02db436a7965b30f29fee6cbbb2d4faa1d683203d2fb3c7f5524f74caa03ffac'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
