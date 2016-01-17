cask 'torbrowser-cn' do
  version '5.0.7'
  sha256 'a1e0d85b2ed42fa622520873882d166cb13a968e868de8a65e086e3c61b207c0'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
