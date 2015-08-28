cask :v1 => 'torbrowser-nl' do
  version '5.0.2'
  sha256 '9a00901c73ae974526624d5ac6aca6972f58d8d45bd2eee0ce4eff145dcacc18'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
