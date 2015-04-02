cask :v1 => 'torbrowser-nl' do
  version '4.0.6'
  sha256 '214a5989ff63a655396beea229dd11d7c9be073318c4af0ec08250730c456d87'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_nl.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
