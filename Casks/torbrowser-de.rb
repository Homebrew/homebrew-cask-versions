cask 'torbrowser-de' do
  version '5.5.1'
  sha256 '73de3868d78fd7fef84c29596fdf412bb7ea84419b71e08875b920cf9c262370'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
