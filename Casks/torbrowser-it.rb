cask :v1 => 'torbrowser-it' do
  version '4.0.6'
  sha256 '384f2252222ad562156cbe54b3ca5fe37c9cc4345f3ce1c16a226a62f2af9174'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_it.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
