cask :v1 => 'torbrowser-pt' do
  version '4.5.1'
  sha256 '3def1f9dd7f912236c0c59b798a85bcdb8a7ce9d6d80c9a27845618a738612df'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
