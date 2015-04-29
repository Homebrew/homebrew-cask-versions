cask :v1 => 'torbrowser-pt' do
  version '4.5'
  sha256 'f87f6b5bc27b4c47bc05480a056f734ab10a7fe8f515468585712e7cc147d3b8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
