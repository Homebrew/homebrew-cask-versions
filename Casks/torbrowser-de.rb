cask 'torbrowser-de' do
  version '6.0.3'
  sha256 'd5f4d87927c9cee90dfd74f09afd103d7b1c2a837197cca20431e7504bf28314'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
