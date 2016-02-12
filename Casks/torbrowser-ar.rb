cask 'torbrowser-ar' do
  version '5.5.2'
  sha256 '48181b9778d7e60cd9afcd8f9e51b459e5589a2eddadcd9f004064285f555fcb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
