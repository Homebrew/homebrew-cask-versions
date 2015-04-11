cask :v1 => 'torbrowser-fa' do
  version '4.0.8'
  sha256 'e8bba0a5056e56e08e8bb755781ab1c24261d406c8d369c3ce165b5388146ece'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_fa.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
