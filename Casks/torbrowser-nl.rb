cask :v1 => 'torbrowser-nl' do
  version '5.0.3'
  sha256 '1cb480e7e6794cb2cd33b0e0539a82e4e9e2141b7ebe79ffccdee6f79ab16217'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
