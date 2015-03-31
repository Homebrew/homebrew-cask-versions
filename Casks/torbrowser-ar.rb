cask :v1 => 'torbrowser-ar' do
  version '4.0.5'
  sha256 '8b40d171c332b678441b48f9660d741b6c00ce1d045b307c8cbf58ef5200d4ed'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ar.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
