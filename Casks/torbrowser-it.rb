cask :v1 => 'torbrowser-it' do
  version '5.0.2'
  sha256 '5546f0d1574daf20eb9aecc2f55f2f0f0addeedf465f14cc6339117503042163'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
