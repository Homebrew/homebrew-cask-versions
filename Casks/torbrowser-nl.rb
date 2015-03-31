cask :v1 => 'torbrowser-nl' do
  version '4.0.5'
  sha256 '1ecfaf3de303c101871f1c6a7f77beb71fda4f172bfa333e2962fa44a871b532'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_nl.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
