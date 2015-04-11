cask :v1 => 'torbrowser-es' do
  version '4.0.8'
  sha256 '8a361b4358c5072e033013f373ce8dd4a9a56d8edb782f0d89072e5a48cec084'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
