cask 'torbrowser-fr' do
  version '6.0.1'
  sha256 '1ed2eab83878359e05c202aef63c9c6ffec07dc440bc464ba0315096f4f36a0f'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
