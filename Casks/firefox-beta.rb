cask 'firefox-beta' do
  version '50.0b3'

  language 'de' do
    sha256 '7c28470bab9c95864b430cfb25eb2594523f8184c1c4f514cd748ad475767418'
    'de'
  end

  language 'en-GB' do
    sha256 'db57f6403c6d45136a11357c07da22f249b99225fc9b3b7fd9f70e6b44fe6256'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '94bfe1b01ec0a7e2a870be7f52655f4ed05fb71143c025bfa1327ac64ff53609'
    'en-US'
  end

  language 'ja' do
    sha256 'f4e3595d13786b248bbe75ce09cdec2227a31eee4451649f7a9386eadb8a97f5'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '53368f4204305861ba653dbd3fca2911e2d9a125f657d14565ab604e1234549a'
    'ru'
  end

  language 'uk' do
    sha256 '5543960eb969fe5a7f3c5bc761e1787b098e8ef40c939a964259e32c2037f010'
    'uk'
  end

  language 'zh' do
    sha256 'f61a688e4ac032f89e2d4f382f7beb3c2489dfea3051d8b741fc474d6188dd36'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
