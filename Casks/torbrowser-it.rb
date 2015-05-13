cask :v1 => 'torbrowser-it' do
  version '4.5.1'
  sha256 'fad247637ba33ad222a7583317126e0cd6c4ca29ef37df4742180806bf83cffb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
