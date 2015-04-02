cask :v1 => 'torbrowser-fr' do
  version '4.0.6'
  sha256 'f704525c7f3f2c2fdab9cb6c63a4fe2137882bb287fe41d550fb22cd34f06cca'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_fr.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
