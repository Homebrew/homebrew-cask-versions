cask 'torbrowser-nl' do
  version '6.0.5'
  sha256 'c7aa6cc8585465d4e598152260f52d2b3804a574c23e0b17a171d5eac8bd41ec'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
