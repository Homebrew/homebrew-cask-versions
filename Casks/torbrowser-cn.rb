cask 'torbrowser-cn' do
  version '6.0'
  sha256 '0e9b2da8b4b24c576cf977e96c107f50be11f73defcbcbf9a72d95bd6cb3e8bb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
