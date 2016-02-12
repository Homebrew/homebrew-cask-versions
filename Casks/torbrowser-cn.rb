cask 'torbrowser-cn' do
  version '5.5.2'
  sha256 'e069e3d298781bccb648851eed947d2c2cf28c82b874365e24df9ffd425567db'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
