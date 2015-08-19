cask :v1 => 'torbrowser-nl' do
  version '5.0.1'
  sha256 'f1500cac2d7a0e717d50ee1b4c358145316ad6626fe91845ec230ac3da373510'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
