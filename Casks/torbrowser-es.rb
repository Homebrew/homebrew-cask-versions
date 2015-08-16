cask :v1 => 'torbrowser-es' do
  version '5.0'
  sha256 '038692695e28c0bf5840d504145bc9a24c5d1a3f3038c6736c11d0ffa63ba92e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
