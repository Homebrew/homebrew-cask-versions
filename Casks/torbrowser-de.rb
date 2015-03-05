cask :v1 => 'torbrowser-de' do
  version '4.0.4'
  sha256 'e48ed22c6c22a2514f15fda01e0c5a99fbafd857517733e166dd1a41cabcbc8a'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_de.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
