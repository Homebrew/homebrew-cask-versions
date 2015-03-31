cask :v1 => 'torbrowser-ko' do
  version '4.0.5'
  sha256 '690ed6cc6348c39c3abf6a6aef35c70a2346d9053dac798280f43dfb14baf041'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ko.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
