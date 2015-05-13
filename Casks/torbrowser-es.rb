cask :v1 => 'torbrowser-es' do
  version '4.5.1'
  sha256 'bb3e6635ec0ac001923bd0896a08f8be25bf56e531eec1a3f010338ec074ea86'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
