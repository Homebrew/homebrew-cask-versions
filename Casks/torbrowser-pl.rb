cask 'torbrowser-pl' do
  version '5.5.3'
  sha256 'bb9dc4b36c85e00a1a31301282dcef327c0f9ffaf48942b3385306fe6a82d117'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
