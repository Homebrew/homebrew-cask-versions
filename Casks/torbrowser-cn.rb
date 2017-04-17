cask 'torbrowser-cn' do
  version '5.0.5'
  sha256 '63262c34c96c08a553b810fbc21c3e957db16f3fb770c93ae2e2f92db41b3d2e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
