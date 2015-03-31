cask :v1 => 'torbrowser-pt' do
  version '4.0.5'
  sha256 '7e9fac80b53ee0ceff9b01fc5822cef8fbdf157333f2eea8abd2b85ac8345ff1'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
