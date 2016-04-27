cask 'torbrowser-ko' do
  version '5.5.5'
  sha256 '971a45baa15e6bd9bb885c6ededdb2a1da08fb43ec222ad6554858d4d13dbcd5'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
