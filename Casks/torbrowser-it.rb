cask :v1 => 'torbrowser-it' do
  version '4.0.4'
  sha256 'ddf481d1677311a8cc5815e8c3dd7dca0c3a28785b72e81a9c0a81e8a2e76fb2'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_it.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
