cask :v1 => 'torbrowser-nl' do
  version '4.0.4'
  sha256 'f47c930676ba663c11fa2fbf50bed83f194e51258d4f01717adf3a03dc0da220'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_nl.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
