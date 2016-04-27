cask 'torbrowser-fr' do
  version '5.5.5'
  sha256 '7823082ada621a7e22f5dc4cbd4e3665521f340bf05ae328ba2e5fda046c4241'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
