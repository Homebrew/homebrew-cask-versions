cask 'torbrowser-cn' do
  version '6.0.5'
  sha256 '9a4d96bfa614faa5df4b1e87e3623dd59f526be9fad09eec6427c8766fb22dcb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
