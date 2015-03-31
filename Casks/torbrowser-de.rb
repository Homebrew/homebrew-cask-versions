cask :v1 => 'torbrowser-de' do
  version '4.0.5'
  sha256 '784b0dfa227a7aa2ad77d38d0e774196a40d4f8fa62e6cbdbcc4dd905f3cb45a'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_de.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
