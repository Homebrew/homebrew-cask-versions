cask :v1 => 'torbrowser-ko' do
  version '5.0.5'
  sha256 '4d90a18fe577f36332b1f829a58b405eb22c8ffe04fa1743f4703a511f58d319'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
