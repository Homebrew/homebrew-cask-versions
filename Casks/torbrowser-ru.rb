cask :v1 => 'torbrowser-ru' do
  version '4.0.6'
  sha256 '641ed1696e5bc63d56c57cc80ebd0e834d87005933851808b479fd381d7040b5'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ru.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
