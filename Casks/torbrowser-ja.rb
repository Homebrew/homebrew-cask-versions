cask 'torbrowser-ja' do
  version '5.5.5'
  sha256 '31235f2ddf4b528b8021a65ec8b971cf6f1a6ca0412ec55f03a08fac4da5b164'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ja.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
