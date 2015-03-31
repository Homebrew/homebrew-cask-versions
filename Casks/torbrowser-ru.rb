cask :v1 => 'torbrowser-ru' do
  version '4.0.5'
  sha256 '8b1e39dd2373390f3d78d36f5a5685aeda85a9f64c861fe609cbd77fd59c414b'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ru.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
