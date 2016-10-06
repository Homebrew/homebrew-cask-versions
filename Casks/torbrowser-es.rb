cask 'torbrowser-es' do
  version '6.0.4'
  sha256 '387e1121ba846baa3df636b83a8b48abced6a3aa04648fcf6935438aff2d651c'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
