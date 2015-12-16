cask :v1 => 'torbrowser-fa' do
  version '5.0.5'
  sha256 'ab4a60b934c202405f8d5a4d57f3f3d6280849bc461cd10369db70ed3a733bd5'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
