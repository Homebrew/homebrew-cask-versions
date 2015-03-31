cask :v1 => 'torbrowser-pl' do
  version '4.0.5'
  sha256 '07026b35c5c63d59f8def654c8733bb0965f5a718ee542888ae216beb117757d'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_pl.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
