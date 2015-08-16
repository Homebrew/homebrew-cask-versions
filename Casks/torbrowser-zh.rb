cask :v1 => 'torbrowser-zh' do
  version '5.0'
  sha256 '2299b87d34fa053a2f145e29150a17b6825ae69199c4472dd8bd533fbdfc9eb8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
