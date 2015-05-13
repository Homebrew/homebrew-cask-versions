cask :v1 => 'torbrowser-zh' do
  version '4.5.1'
  sha256 'a66e99de1b1e3a3fdd32c6954c9f635ae157e47c89a0888240d30d7e2c363aed'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
