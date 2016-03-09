cask 'torbrowser-fa' do
  version '5.5.3'
  sha256 'e56f9d709a2e5e8924904f6a81fb13ed6746c79f0fb8ebeefddcb0238fa4c9d9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
