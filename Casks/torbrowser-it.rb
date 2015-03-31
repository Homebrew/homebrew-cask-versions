cask :v1 => 'torbrowser-it' do
  version '4.0.5'
  sha256 '7a82741af135340cac6b2d848cb107e68d17c63b57c433902a60187dda91cba5'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_it.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
