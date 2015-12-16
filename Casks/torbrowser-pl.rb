cask :v1 => 'torbrowser-pl' do
  version '5.0.5'
  sha256 '9af8f9fa15d6be3c02faa1f78c78569f6c1867ddeefe4e8658b5214c3f2e9854'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
