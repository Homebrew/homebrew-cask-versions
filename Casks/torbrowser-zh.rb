cask :v1 => 'torbrowser-zh' do
  version '4.0.8'
  sha256 '661fb573ddde8a656e346108635e714b7be48a5165d80955e8d2235dada6cd2b'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
