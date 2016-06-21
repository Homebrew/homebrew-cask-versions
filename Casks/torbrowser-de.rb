cask 'torbrowser-de' do
  version '6.0.2'
  sha256 '4ea91c9d360b1e40d7f6b4e123474935ba16ddc5dbaead38015c861300117e12'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
