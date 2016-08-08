cask 'torbrowser-fa' do
  version '6.0.3'
  sha256 '7b1f54b0215a251035abcb3dddd996c0574742e9e94d6fef4e8f81da51c457c1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
