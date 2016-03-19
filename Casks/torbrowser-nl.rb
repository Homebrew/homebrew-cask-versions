cask 'torbrowser-nl' do
  version '5.5.4'
  sha256 '63b481436c3968443e232d529919ce78ee72b9961dfdb9c76b4aeee6549ce6fe'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
