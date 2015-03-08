cask :v1 => 'torbrowser-zh' do
  version '4.0.4'
  sha256 '833c009c56afb0112246788fe8d87f9cad7a7aab5e372e4dcc95327be49885c0'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_zh-CN.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorBrowser.app'
end
