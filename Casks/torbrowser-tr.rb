cask 'torbrowser-tr' do
  version '5.0.7'
  sha256 '6cd4dede3b0d90169437a2b4874a98f2122902bdc054f4ba3f6eb19b05b9288e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
