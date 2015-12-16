cask :v1 => 'torbrowser-pt' do
  version '5.0.5'
  sha256 'd28f8771f18baafdfbd3a0c7fc0746ce5d935e5fa02f7c0f947fb85d07670cb4'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
