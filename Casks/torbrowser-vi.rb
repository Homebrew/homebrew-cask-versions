cask :v1 => 'torbrowser-vi' do
  version '4.5'
  sha256 '008bdab85c6e17888702b5f537c8150ec21d0312215696c22ff3f7a7db06ae0e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
