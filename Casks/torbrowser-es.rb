cask :v1 => 'torbrowser-es' do
  version '4.0.4'
  sha256 '8ce08936004e1963663ca895e24d3b10e39ba42711578d89e437a9bbe862f2f8'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
