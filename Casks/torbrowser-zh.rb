cask :v1 => 'torbrowser-zh' do
  version '5.0.4'
  sha256 '7605891e9c215e418548cb66e6b301d28df6e5c1dde3017cd752dc2658ee843c'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
