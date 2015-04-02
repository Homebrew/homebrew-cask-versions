cask :v1 => 'torbrowser-fa' do
  version '4.0.6'
  sha256 '30ff82bf0c357de63e9f1c571b481ded2a4ab244fbdd538dea72af4fc4b6565f'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_fa.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
