cask :v1 => 'torbrowser-it' do
  version '4.0.8'
  sha256 'c29d6e796994880d1e0ff020540bf7b527d8684a48f1517d07c6278ef0d605cc'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_it.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
