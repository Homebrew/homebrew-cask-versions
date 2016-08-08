cask 'torbrowser-cn' do
  version '6.0.3'
  sha256 '1bad41c1ce70c38aea3beeae49c14a6aef98d0382285467a32174458be76a2b7'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
