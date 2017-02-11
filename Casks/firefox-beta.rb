cask 'firefox-beta' do
  version '52.0b5'

  language 'de' do
    sha256 'f324a6fff728ffee415fb3b4c788f32ed7ee12a161e6736da3a738e560e21f00'
    'de'
  end

  language 'en-GB' do
    sha256 'bb6e598df22417a6f414b025ec72b537c0fceacfe1ef34367cf9673050007915'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd64efec94d3165e449fe9d5d2a146a84fba7f502e75fa93314bd30ef304ecc98'
    'en-US'
  end

  language 'fr' do
    sha256 'c7ac00270fe38223ec19c0113ca96a785c2cbd44dea5feb0ca8b5f34c48e8574'
    'fr'
  end

  language 'gl' do
    sha256 'f1de2da0eeaf026d50434f4f65c53e50a41ca9da93bdb90b971b2435c1c223ae'
    'gl'
  end

  language 'it' do
    sha256 '4b815bd50976e1ad1141bfedf446407a11265f35f2994b060a9a5dfc2d0425b1'
    'it'
  end

  language 'ja' do
    sha256 'a9538d4b664abf2e5ac92eb095993bc69cfceecabe441ca1cc808c32844d6e12'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'efe353559e486a53b6082b51101d06ecf513fc3ba84846ebad739b99e848baf3'
    'nl'
  end

  language 'pl' do
    sha256 'ef6f0a5d2fc94ccc7864e1c822872f301242d78b4828d2b0a2d7f800c2e36960'
    'pl'
  end

  language 'pt' do
    sha256 'b70a89248d5843fe748ffc1ec2e605f99c674d52624ed6815e581f77bccd8afb'
    'pt-PT'
  end

  language 'ru' do
    sha256 'd597562c933a5bfa6841967e182d5f7222534787e079f68ad41b4cd36468d9d7'
    'ru'
  end

  language 'uk' do
    sha256 '0acb6139019f9b878ccc91c681d50ae8f330a89da7de4018d9448ba451d941e9'
    'uk'
  end

  language 'zh-TW' do
    sha256 'b5f1a96fced4ac462232228e13c70a0f2f2fbf62c45dfa5ba064d0e7201441b6'
    'zh-TW'
  end

  language 'zh' do
    sha256 '22464bb02ddf1255cd703a566c361e5a09c09a6de9704c5429aadaa19e20f44b'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/#beta'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
