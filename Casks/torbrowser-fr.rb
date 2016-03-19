cask 'torbrowser-fr' do
  version '5.5.4'
  sha256 'c84a4fda4bdebba1d0df695f08ecab6fffa4e70de136e5bda7323d0105956059'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
