cask 'torbrowser-vi' do
  version '6.0.4'
  sha256 '9f0087c01f4618e73277c65717283a0d4332aeee7880b456c53a07da618fcdf0'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
