cask :v1 => 'torbrowser-ru' do
  version '4.0.8'
  sha256 'f8ce2c005244c02e543f1bed4f5c19f7177e0ad8454e8f32552f6ba37bba620e'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ru.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
