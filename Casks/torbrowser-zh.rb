cask :v1 => 'torbrowser-zh' do
  version '5.0.1'
  sha256 'b4dfc8395e01ab8ced43b31795d8beb2dd88149859911ab07a0a7872dd5f2548'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
