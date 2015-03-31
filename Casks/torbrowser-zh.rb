cask :v1 => 'torbrowser-zh' do
  version '4.0.5'
  sha256 'bd05b785d59ad613661be5b2260a1212476d03f4b8b4e4df34f481c26e65fa30'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
