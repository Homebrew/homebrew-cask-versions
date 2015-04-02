cask :v1 => 'torbrowser-vi' do
  version '4.0.6'
  sha256 'e652310b95684916c325bc7c4495f9f205ec84a6bcce58d89151ab92911d9e37'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_vi.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
