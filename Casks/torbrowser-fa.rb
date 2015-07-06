cask :v1 => 'torbrowser-fa' do
  version '4.5.3'
  sha256 'e6c025d8f6f3966cd0cff3c9b5e793a905e809c66add2be4da4ceecf2aa45f0c'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
