cask :v1 => 'firefox-cn' do
  version '42.0'
  sha256 'ccd21fd90e1f6d36f02cf3ecda61af97180ae06bccb58697d6d82ebfee59757b'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
