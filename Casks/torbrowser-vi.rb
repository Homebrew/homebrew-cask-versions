cask :v1 => 'torbrowser-vi' do
  version '4.0.4'
  sha256 '0ba3d39479e5a5ff16a40b08027941c852e69a38df1dbf08e559dfa53991df82'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_vi.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
