cask :v1 => 'torbrowser-fa' do
  version '4.5.2'
  sha256 '932dd4e5bfa0265ec909a1cc069e2c5dacb93466fa7492085eb02b518c7eb20d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
