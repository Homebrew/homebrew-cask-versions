cask :v1 => 'torbrowser-tr' do
  version '5.0'
  sha256 '0049d72b9cdeba86df0a8b9455b7ec971fc607b55a009a03c08b0b40d3ca37e1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
