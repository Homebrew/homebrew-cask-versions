cask :v1 => 'torbrowser-zh' do
  version '5.0.2'
  sha256 'd9dd3aff1bdad5d682fffd5d497412e135e295bb612e41b2ec53cf3de615db65'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
