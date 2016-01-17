cask 'torbrowser-pl' do
  version '5.0.7'
  sha256 'c87905e4dcb4bd2b417b7fcf3c0ca47d4eb7168eef08c7a413ed839061fd8397'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
