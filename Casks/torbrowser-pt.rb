cask :v1 => 'torbrowser-pt' do
  version '5.0.3'
  sha256 '355f04ceafa589530628e2ffa8738ae2b8003db1104658a9934553d3647d6be7'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
