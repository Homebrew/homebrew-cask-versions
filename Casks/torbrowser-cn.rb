cask 'torbrowser-cn' do
  version '5.5.3'
  sha256 '5191bb29eb55328f471b160a73371383ab1dcfc3be06310e825c84ec3e40c84d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
