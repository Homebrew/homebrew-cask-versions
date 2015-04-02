cask :v1 => 'torbrowser-ar' do
  version '4.0.6'
  sha256 '7ce01ad503f8c0d87a60372e6702131b59519c42a3cf11df4db40f97c99659a3'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ar.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
