cask :v1 => 'torbrowser-fr' do
  version '5.0.1'
  sha256 'ca38b11b2b4cde9a4fa5a5e455555b1ad5b2ba51eb5970b37016ab92befa4ab1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
