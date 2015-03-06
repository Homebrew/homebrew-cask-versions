cask :v1 => 'torbrowser-fr' do
  version '4.0.4'
  sha256 '4917eec04747f89dc246cfb98ead929d05246c5ac9a5bf37f15ffd2bd3c3f6df'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_fr.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
