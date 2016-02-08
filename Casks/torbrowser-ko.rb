cask 'torbrowser-ko' do
  version '5.5.1'
  sha256 '374d8392d167977a8bbe18a08311d74c14a40aa22791e087b500a70ba31d0454'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
