cask :v1 => 'torbrowser-nl' do
  version '4.0.8'
  sha256 '64b45bd0cb6d01d0d819516c4e0210487b8bf53e67167af9e22ef37b8a99e3c4'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_nl.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
