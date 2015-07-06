cask :v1 => 'torbrowser-ko' do
  version '4.5.3'
  sha256 'a97dd3c8bcc14d610c07f6ab1ba34ee0a285e9d8ee065fdcfbee364a9f8ca87a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
