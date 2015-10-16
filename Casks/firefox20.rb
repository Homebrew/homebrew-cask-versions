cask :v1 => 'firefox' do
  version '20.0'
  sha256 '4848df9d4ce810bea0fc27ed4766bbfffe6afac184c601b07931da86b028720c'

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
