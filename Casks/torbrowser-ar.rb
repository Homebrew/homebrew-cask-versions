cask 'torbrowser-ar' do
  version '5.5.1'
  sha256 'a1192053483a7a6e12a91f1fb1d64911c9ff86b0c9ceac87cb880f9ad7350b69'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
