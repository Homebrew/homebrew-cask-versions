cask 'torbrowser-es' do
  version '6.0'
  sha256 '7bedddfb73d0695f26c017e60c1d2b3c12a6d58553b33efd28a0a4bfb2a6be1d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
