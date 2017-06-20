cask 'firefox-beta' do
  version '55.0b3'

  language 'cs' do
    sha256 '034630bd82cf2fa0374721fbd03f5ccb830c9b065a8d561ae64ccf597bb7f8d1'
    'cs'
  end

  language 'de' do
    sha256 'afc9f79a8f674e477c8db451981ecb880475f9dd50c907a216324bfc264e3e12'
    'de'
  end

  language 'en-GB' do
    sha256 'a25097b84b7b1099e45338de1d9a7f9e3e3a6840351245d9c86493905004d1d4'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '3e4f099b8b24f0a7db1e36577a75574ed3364f5159b0c1927fedaff4e779dcc8'
    'en-US'
  end

  language 'fr' do
    sha256 '022ae088361e8ecfac15a7937d0073fa4d2d288729bc0116fc32f4c75c0a6247'
    'fr'
  end

  language 'gl' do
    sha256 '490a117526b05ad344640f6e9bdbcf446109c2f7e58bb4332af0cf826b1cc53a'
    'gl'
  end

  language 'it' do
    sha256 '538b6c81cbed8bedf77cf48afedcf0c64a7b62cd9185f6cf15ad9548604ee0cf'
    'it'
  end

  language 'ja' do
    sha256 '925ae24fe812be3fe86d9613c4b6478f70613c8abf774ba6c1c831237c983385'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '998e53bde9e85457a02d177e878a388962819f559e531f6a3b607d1d0d57c52a'
    'nl'
  end

  language 'pl' do
    sha256 'deccac5ce54e0ea57587ecf674921f0a8c5032525ef0d033d4d5c4740ed2cd96'
    'pl'
  end

  language 'pt' do
    sha256 'c5822dc5da8886a0416f004cd49e9bbf857477955203c425b4bcdaf50e5ebd22'
    'pt-PT'
  end

  language 'ru' do
    sha256 '95fea84d7ae7fe8ed53c8e3890041ab747818d6e449de2c8bd581741fc863c20'
    'ru'
  end
  language 'uk' do
    sha256 '7c4c79494045e5d38e552fb03f5309e9e551235fb9596699aa1f0e736a17c8a6'
    'uk'
  end

  language 'zh-TW' do
    sha256 '8fe0c8884490fa6dadf6ca2a5773ac7c74d923ed2d09fd068bd82f77e51733d7'
    'zh-TW'
  end

  language 'zh' do
    sha256 '31ed7e812af44f37b3cdb17bfa466fb8167515205d6e350955f3aef1cf76a15b'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/desktop/#beta'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
