cask :v1 => 'torbrowser-tr' do
  version '4.0.6'
  sha256 'c0f5db9a33cfe149c8e8b6b3606f002062b3eb5bb65fce09a208cba718c2bb38'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_tr.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
