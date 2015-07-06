cask :v1 => 'torbrowser-zh' do
  version '4.5.3'
  sha256 '5c69c2d77f31d69569b7e450f5b4713ae64e151aa4bc4e5cfae547b116545643'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
