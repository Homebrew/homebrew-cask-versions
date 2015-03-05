cask :v1 => 'torbrowser-fa' do
  version '4.0.4'
  sha256 '0297b2a77c6fdf6ff4a02eb1ba6e0b4c09c9298b806c3711e2173d3682722327'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_fa.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
