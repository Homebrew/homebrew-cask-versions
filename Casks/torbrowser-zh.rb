cask :v1 => 'torbrowser-zh' do
  version '4.0.6'
  sha256 '5d04a052cd1ffac48cd859a29385ad46d6dfea52d3828d67b5d8bdf09d67bfd1'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
