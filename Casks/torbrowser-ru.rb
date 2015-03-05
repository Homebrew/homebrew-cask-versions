cask :v1 => 'torbrowser-ru' do
  version '4.0.4'
  sha256 'eab5d4586a3f6b06afe42631ed60888c00e6226aa78faff2b54cffec5e03560e'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_ru.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
