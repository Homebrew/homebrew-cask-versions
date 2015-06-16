cask :v1 => 'torbrowser-fr' do
  version '4.5.2'
  sha256 'e343c832ab62e244120b832e054742e461e0f95b14981ed0456cce0ad8c952af'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
