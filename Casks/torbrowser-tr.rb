cask :v1 => 'torbrowser-tr' do
  version '4.0.8'
  sha256 '13bf94925954cb9ce4b128feadb76f909c292d9ee428a2e820577bfa03b0f381'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_tr.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
