cask :v1 => 'torbrowser-ar' do
  version '4.0.4'
  sha256 '46ddbedb4a75ec383f5b2ae350a4d357331c0bd856bc4d66db28254b7056292f'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ar.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
