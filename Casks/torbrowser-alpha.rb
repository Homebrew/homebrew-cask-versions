cask 'torbrowser-alpha' do
  version '7.5a1'
  sha256 '949d6cc117c93733e3dd175c2b3647321fd7cf0f7bd741a8c877d6c50a53881a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
