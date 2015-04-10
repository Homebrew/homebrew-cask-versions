cask :v1 => 'torbrowser-pt' do
  version '4.0.8'
  sha256 '3ba7e8daa1fbcbdb0c1d2fbd7a6164a3538bc406aa07a7a5849918ee90be2929'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
