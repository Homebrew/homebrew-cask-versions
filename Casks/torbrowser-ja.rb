cask 'torbrowser-ja' do
  version '6.0.4'
  sha256 '4c73f61c80c7f46fab7d9742e38c9b30529efb541702fe4d9f059e68021e7524'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ja.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
