cask :v1 => 'torbrowser-pt' do
  version '5.0.2'
  sha256 '1a14b170cbff9e8e7dfc88a8b00642b65161337fa43117d569f5441680738f91'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
