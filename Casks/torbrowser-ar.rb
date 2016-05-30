cask 'torbrowser-ar' do
  version '6.0'
  sha256 'edd365ff7625a4ec2b1f8dc201bc7044046bb7d76c3422e046a7c5c8c41bb4d7'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
