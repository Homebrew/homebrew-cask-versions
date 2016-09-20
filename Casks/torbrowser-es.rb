cask 'torbrowser-es' do
  version '6.0.5'
  sha256 'be7acf756ae9ee9e5af177f82689f739a2fecb6b37ee7d90107665c2765d5044'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
