cask :v1 => 'torbrowser-pt' do
  version '4.0.6'
  sha256 '35759248e9828bf7a9c4ad08000dc3c23e86ea39a37a27dc14947385e345013e'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
