cask 'torbrowser-pl' do
  version '5.5.1'
  sha256 '5462736a89cbcd0b6809b7af4c825ec49efc7648e399704192ac3ea39f00331e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
