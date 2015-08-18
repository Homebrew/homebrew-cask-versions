cask :v1 => 'torbrowser-it' do
  version '5.0.1'
  sha256 '6cc1a09d25db200945066a2ff12b06b3592605e98054cdd40c1a5db991933baf'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
