cask 'torbrowser-ja' do
  version '6.0.2'
  sha256 '6580d555e826ac1bc70d0e0e7dfafaa6bfed131a068df95acdb47d694a9e21b8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ja.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
