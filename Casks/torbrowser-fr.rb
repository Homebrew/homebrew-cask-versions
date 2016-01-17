cask 'torbrowser-fr' do
  version '5.0.7'
  sha256 'b7cde0c92bdfb97fbd686e89009c5dd9ccfa5ec5cd3b5522465ba5d43623a6c8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
