cask 'torbrowser-cn' do
  version '6.0.1'
  sha256 '8b95b7dc2e76ce924f93446ae60fd28f3911fbc2567a99eb1d66b03be28ce1a4'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
