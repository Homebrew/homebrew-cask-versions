cask 'torbrowser-ar' do
  version '6.0.4'
  sha256 '258540b701aede788449fedaece13a42ebc79114b4b6fdb67e352aa9c9a355f9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
