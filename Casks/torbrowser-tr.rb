cask :v1 => 'torbrowser-tr' do
  version '5.0.1'
  sha256 '8818ede4379d1dbcf89462ecd9f06b0a3391868a2d021e8591d214703c3c8979'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
