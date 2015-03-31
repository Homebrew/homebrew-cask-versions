cask :v1 => 'torbrowser-tr' do
  version '4.0.5'
  sha256 '61fe632aff65d509fa204e6e602833d012c96f21885256009e2e05549c100d2d'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_tr.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
