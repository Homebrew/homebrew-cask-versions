cask :v1 => 'torbrowser-tr' do
  version '4.0.4'
  sha256 '47ed9e37c1a22561c3e5f15f26e85cf9ed716dfe52e96a4e04d59fa10cf3c115'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_tr.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
