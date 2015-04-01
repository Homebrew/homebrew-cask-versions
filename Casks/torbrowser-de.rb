cask :v1 => 'torbrowser-de' do
  version '4.0.6'
  sha256 'ace3bb50418798da052287fa132ab1863721e96fa3a614d0f788f8081664fd21'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_de.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
