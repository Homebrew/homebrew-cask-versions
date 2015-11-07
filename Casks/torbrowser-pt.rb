cask :v1 => 'torbrowser-pt' do
  version '5.0.4'
  sha256 '2c89c5294ba7800c44fb9131637dc91bf1d9c644bf66d4d96c40af38d5e8dee6'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
