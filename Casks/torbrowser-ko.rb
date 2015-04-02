cask :v1 => 'torbrowser-ko' do
  version '4.0.6'
  sha256 'ec62cfc18b5c5e2af89e42e1bb4a7ba5adc06acabbf72b89ce1774a0bedda367'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ko.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
