cask 'torbrowser-fr' do
  version '5.5.2'
  sha256 '7724d7b73f25856c61c6cd21237b2638c1f48ed4178a7f28698873bf6e907d14'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
