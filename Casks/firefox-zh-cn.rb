cask 'firefox-zh-cn' do
  version '44.0'
  sha256 '70ca164334b9f1f245354384d31cb0bcc9311701812b625e7e7055c8f67fe383'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
