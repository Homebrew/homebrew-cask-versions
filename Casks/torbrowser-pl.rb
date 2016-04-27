cask 'torbrowser-pl' do
  version '5.5.5'
  sha256 '09045251be799cdaa6e806f8aa6727c5eefeea7b735815455678947a4eedbbd8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
