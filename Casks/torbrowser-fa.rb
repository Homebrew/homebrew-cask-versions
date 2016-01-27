cask 'torbrowser-fa' do
  version '5.5'
  sha256 '4b6b7e08995bffdf34c604a8c4fef6d6423c5b1c2beca6eb2f371f37ed22e748'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
