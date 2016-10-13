cask 'torbrowser-alpha' do
  version '6.5a3'
  sha256 '3d902e6e368fcb0ed07c27874e97341714f0c2db29f91a17e4bc6a0246a62af2'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
