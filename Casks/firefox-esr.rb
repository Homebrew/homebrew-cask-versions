cask 'firefox-esr' do
  version '60.8.0'

  language 'cs' do
    sha256 '30c3607ed8db716e9e33f3f42796902778a7b573dc09f219fa2154d21cdd48ea'
    'cs'
  end

  language 'de' do
    sha256 '5aa0dba2ff5fb669a93733c49f7f1303209ab92251417da600cec1bb4e7bc4e3'
    'de'
  end

  language 'en-GB' do
    sha256 '02e4c1d844f7f0fc8bcb28c2ac471233e64824c65a002b2a2d4bb90bbe533699'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9b7a882d7d5cf1f1963fbb9ebff51dd4eea2df985038d1c1cb0d328a1fea831c'
    'en-US'
  end

  language 'fr' do
    sha256 'bdb4c79d50501f443a0121dbbac30a0225a31a8b83afc293a7fd57eb539ceb95'
    'fr'
  end

  language 'gl' do
    sha256 'b44e0da2e30caefac01123658d2c8794f86b9f3dcdd1182f0a2365c3019c0c32'
    'gl'
  end

  language 'it' do
    sha256 'c69650d3d30cfddd22fd2cbc0aea2f33d70acfa31fc69d2f21fd2c095a7690cc'
    'it'
  end

  language 'ja' do
    sha256 '39b1775c3d886c2f4b79b25e8db4eec09cc3f301b205218cd64c33a327caabea'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'cc509391bfed6258b32a63ee5d21691718920aac3672274fc844643f1001d776'
    'nl'
  end

  language 'pl' do
    sha256 '251848c6ba2246765d86d974dab12856f18bf833803e4e04e7fcd9f12944af5f'
    'pl'
  end

  language 'pt' do
    sha256 'de7f91e3e3b83df5d79a059dd8febe71163ea4cf843fb1c0845450486d31541c'
    'pt-PT'
  end

  language 'ru' do
    sha256 'ca1621777c260456d8e20fc9ea9b19024780f0ce0fcc78792e9cd84cf893831b'
    'ru'
  end

  language 'uk' do
    sha256 'b9adc606bad499c4583cf0cb0318ebc9607a87d3aaed39894a476dbc25ddd2ac'
    'uk'
  end

  language 'zh-TW' do
    sha256 'e61040216ec4db449252813cd3d72806788b272e5c841d7d4436ce61aed21b11'
    'zh-TW'
  end

  language 'zh' do
    sha256 '79f3ece65d48f89f0ce203f650b29bc446e0892286ad0fd0aa9bb1a13f250f2b'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-esr-latest-ssl%26os=osx'
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  conflicts_with cask: [
                         'firefox',
                         'firefox-beta',
                       ]

  app 'Firefox.app'

  zap trash: [
               '~/Library/Application Support/Firefox',
               '~/Library/Caches/Firefox',
             ]
end
