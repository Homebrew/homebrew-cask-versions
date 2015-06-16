cask :v1 => 'torbrowser-pt' do
  version '4.5.2'
  sha256 '84a1f8be31eaa4a9d1de2874e8995b77afa93290fd806a438a19323260519b80'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
