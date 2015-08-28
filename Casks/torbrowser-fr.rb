cask :v1 => 'torbrowser-fr' do
  version '5.0.2'
  sha256 '8a095196df25f969259a1499c3e1a1e64aa81eed53bda85b4fd389423f66d43e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
