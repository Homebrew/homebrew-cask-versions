cask :v1 => 'torbrowser-ar' do
  version '5.0.3'
  sha256 '28f11892a602046fc981efe5232d9480f7706925618b8239e02c03910ede4d86'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
