cask :v1 => 'firefox' do
  version '16.0'
  sha256 'd02891b1d3a4a981628331c65c18842942b08180c76671fb6ff4aaa967d2ebd0'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/en-US/Firefox%20#{version}.dmg"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
