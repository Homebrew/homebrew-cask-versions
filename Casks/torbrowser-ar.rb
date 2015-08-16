cask :v1 => 'torbrowser-ar' do
  version '5.0'
  sha256 'bdb0a6ff3ad938733e38e34e5462da7ef529f0d85e1fe4359e373554b7d0941d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
