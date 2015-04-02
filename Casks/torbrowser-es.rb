cask :v1 => 'torbrowser-es' do
  version '4.0.6'
  sha256 '0ba68beecf97708b0395582a9946353bb380a17b5f09131e36b60ad2c26081d0'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
