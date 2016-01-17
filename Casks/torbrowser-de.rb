cask 'torbrowser-de' do
  version '5.0.7'
  sha256 '84f4c22558bb3d41955f326cc8cfb82b4774304ec2cab2f142b6443e72320cf8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
