cask :v1 => 'torbrowser-pl' do
  version '4.0.4'
  sha256 'ba55d8225b4df2fb05c44d12fa4a0ad750382959f1e74e6c45e4293a22530b72'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_pl.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
