cask :v1 => 'torbrowser-fr' do
  version '4.5.1'
  sha256 '0842d9fc34da90d3aac4b22613558dfe90893ae224bf43b1f08e8330dada46b9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
