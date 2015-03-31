cask :v1 => 'torbrowser-vi' do
  version '4.0.5'
  sha256 'f379c3a1b79a0703c7b02bc3aba8a2471974ecfb3b5aba8249227a46f083d74b'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_vi.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
