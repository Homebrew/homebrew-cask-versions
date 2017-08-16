cask 'firefoxdeveloperedition' do
  version '56.0b3'

  language 'cs' do
    sha256 'f885f90aa9ce4d436706c37ba5c57ec1c6db6e3599392dcd9fb078095b653bb2'
    'cs'
  end

  language 'de' do
    sha256 '94c6ddb05399f3ccd1cbba8d68672ceb465db43ef4f5242910d3d45741d513f1'
    'de'
  end

  language 'en', default: true do
    sha256 'ce73bc16f26495ced481fdfdbdff8eb9a092a13e9ea629dc6ce279dac1da25fd'
    'en-US'
  end

  language 'ja' do
    sha256 '76f07c6435f2e5c7261bf4cb55d68900d076e3403535de6214f409bce01dcf6c'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '0eca1a90a3cbf753847a5c861786ab47268855adf5bfff676771c31f6f0eb198'
    'ru'
  end

  language 'uk' do
    sha256 '770fc01851fa954062c5b05cd013ef5a00f75379d4f56225e270fcea7ddeec00'
    'uk'
  end

  language 'zh-TW' do
    sha256 '681714c5128a07cfd3ba51316444a74411c059a2c6743cd8d5406876ada421ba'
    'zh-TW'
  end

  language 'zh' do
    sha256 '145899a88936f8e1b0313b9aabd49d3b3886ba1257518a376f305da1d26993c0'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: '732dddeb1476b75cb37da2b892aba3195c6d26bd61da831fe5a6446e11091f64'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
