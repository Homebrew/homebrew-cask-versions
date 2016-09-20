cask 'torbrowser-tr' do
  version '6.0.5'
  sha256 '32b207fa9fbae37cc78b43eac4cef4c0966069dc94176ee035c0bf6390caee2a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
