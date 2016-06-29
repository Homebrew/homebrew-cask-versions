cask 'firefox-beta-zh-cn' do
  version '48.0b4'
  sha256 '2891be5b82bee7dec7ac22ff6cdef6a3ee0cde9a7f35291b21337efb82adbd0b'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
