cask 'torbrowser-ko' do
  version '5.5.2'
  sha256 'd0964ae636cbc36f5e9d6ecf361b4f086467157bd38117aca2b1223931ec4624'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
