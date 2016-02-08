cask 'torbrowser-nl' do
  version '5.5.1'
  sha256 'f9766bb6b36f4e5af4afeafa2c8bcc176f46140857f91dcb7d2e8009ffd7109f'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
