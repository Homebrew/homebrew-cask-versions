cask :v1 => 'torbrowser-ar' do
  version '4.0.8'
  sha256 '817c7a62e3c2643a9b6ee964a2cd8f6e03f1079270d5ac140b2191546db23e38'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ar.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
