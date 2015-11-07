cask :v1 => 'torbrowser-ko' do
  version '5.0.4'
  sha256 '6c175c282e76e893057e605ecdce8bc1a148ca284a1e90f46495ffe09c1de148'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
