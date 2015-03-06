cask :v1 => 'torbrowser-ko' do
  version '4.0.4'
  sha256 '667086573b3815a873c5ec09180e463a2ce73457b40e72b3f1504e4d7d0be0b6'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ko.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
