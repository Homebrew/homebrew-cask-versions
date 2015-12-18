cask 'torbrowser-it' do
  version '5.0.5'
  sha256 '4e1f9ea0ca7eb1ef395934e9f5df3c81300620976aa1991e8c71ba08f220b498'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
