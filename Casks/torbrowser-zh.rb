cask :v1 => 'torbrowser-zh' do
  version '5.0.3'
  sha256 'eda5b7377b1a24fc918d9b16d4400a8b64975e57649623aea1e5e8b6b4f27dc6'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
