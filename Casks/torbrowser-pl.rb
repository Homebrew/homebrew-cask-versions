cask :v1 => 'torbrowser-pl' do
  version '4.0.6'
  sha256 'ab2bbff4f6b718bea3c4cf8e1e82bcdfaf780a1797bd1cf0840ea2b92b15c758'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_pl.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
