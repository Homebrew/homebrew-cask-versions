cask 'torbrowser-cn' do
  version '6.0.2'
  sha256 '02c8eb1bbd7b9490a59a21dff4a573fc526ddb74fdf1ebbb07ea1f9af1567015'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
