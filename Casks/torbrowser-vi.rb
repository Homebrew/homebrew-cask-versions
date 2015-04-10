cask :v1 => 'torbrowser-vi' do
  version '4.0.8'
  sha256 '8c490e3062c977c183cdf29c9d6ad4ff2f9b80d3003897cc1308604fe550e4d9'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_vi.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
