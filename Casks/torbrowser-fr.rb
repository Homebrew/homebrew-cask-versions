cask :v1 => 'torbrowser-fr' do
  version '4.0.5'
  sha256 '8a1a84b62a8269cd3082c5d61e3a59496d285cc928cccf0ebb2739b82c79da10'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_fr.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
