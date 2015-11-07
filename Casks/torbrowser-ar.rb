cask :v1 => 'torbrowser-ar' do
  version '5.0.4'
  sha256 '0b1de58bf5a10083dd64883ca9a2e4a85e88575461748f52a3be1119175c605b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
