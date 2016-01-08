cask 'torbrowser-nl' do
  version '5.0.7'
  sha256 '114d63966962b9a865cef607dc65315bb1a18f61eba7b019ec603c85393c3cf7'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
