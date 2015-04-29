cask :v1 => 'torbrowser-zh' do
  version '4.5'
  sha256 'f6a6a8f592aa4c5ca7f424033f791f34cf4b96c89f1182b97c02584652b8070b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
