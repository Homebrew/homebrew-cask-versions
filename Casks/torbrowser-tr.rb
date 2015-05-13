cask :v1 => 'torbrowser-tr' do
  version '4.5.1'
  sha256 '8d84ee1a4193f668587b36716dc9e201b51a18649ed6bf82301f87fbdba154dd'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
