cask :v1 => 'torbrowser-fr' do
  version '5.0.4'
  sha256 '42c3eabc36245148cc27256652c7506c67d88c62454fc814ebe24b06b703d6c7'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
