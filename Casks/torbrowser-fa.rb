cask 'torbrowser-fa' do
  version '5.5.2'
  sha256 '6b8ecc39e7e7e66e48e47d5d1aa7dae8f02bdf5400a23082418472b29e8f7852'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
