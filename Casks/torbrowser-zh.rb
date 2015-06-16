cask :v1 => 'torbrowser-zh' do
  version '4.5.2'
  sha256 'd3bef6d2ae4476949bb65f82db34aaeee5e01d8bf4b32c59f3812c15428688cc'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
