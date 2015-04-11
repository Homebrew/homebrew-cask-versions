cask :v1 => 'torbrowser-fr' do
  version '4.0.8'
  sha256 '748043147e1fc3603fe816963ba1dd4b692375e237f7d832ec0975d9dcd5f853'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_fr.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
