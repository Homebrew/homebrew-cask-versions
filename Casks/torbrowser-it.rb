cask :v1 => 'torbrowser-it' do
  version '5.0.3'
  sha256 '293e80142577b6d12227bc146fcd0aed106e2c0a646a3ef846a97dfacf7e1386'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
