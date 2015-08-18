cask :v1 => 'torbrowser-vi' do
  version '5.0.1'
  sha256 'ee16976180faf27a71b809c5090d0953673e32fe6c6e4d294efe9c3a13239e02'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
