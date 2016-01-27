cask 'torbrowser-cn' do
  version '5.5'
  sha256 'f45c48432f738507e2ff2bb85cd4d3dbb4c773477aa41cbe406719a984ad303a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
