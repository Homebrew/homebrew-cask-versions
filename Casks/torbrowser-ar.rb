cask :v1 => 'torbrowser-ar' do
  version '4.5.3'
  sha256 '9c0b71a228f9efc0f0b09ee9b12a142a5afc51154e71000b077569f556db3546'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
