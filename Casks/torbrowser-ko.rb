cask :v1 => 'torbrowser-ko' do
  version '4.0.8'
  sha256 'eaed23db169bdc9bdbe63186e7dc5190b867f9bba6f3b6e18c57da09c3d13da1'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ko.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
