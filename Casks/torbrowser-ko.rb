cask :v1 => 'torbrowser-ko' do
  version '5.0.1'
  sha256 '9ac4752d8fcc96fda5b10c0fc4e7692010e54ebe0e918048f272a55c80c93ab1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
