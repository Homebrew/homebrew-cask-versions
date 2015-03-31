cask :v1 => 'torbrowser-es' do
  version '4.0.5'
  sha256 'd8aff934aca6526efa5024dfa78d2a332ca27229f85a591d4d26653ff40bf1af '

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
