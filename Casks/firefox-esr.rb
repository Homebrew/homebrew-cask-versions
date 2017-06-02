cask 'firefox-esr' do
  version '52.1.0'

  language 'cs' do
    sha256 'baedabffbfdcef9d3cf08d1971a7b1c83293345f74130d64af32202de9bf6e97'
    'cs'
  end

  language 'de' do
    sha256 'd59a72100c1bd6339f3bbc40fe211f0a9a3fc16e9b1b51c067885f7c3c247e1c'
    'de'
  end

  language 'en-GB' do
    sha256 '341230c9e57ed2c04af65334c7b4d0132df5b743f18d7d485ef801b80ca9ec46'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c6f8f07bcab2782825538bbfc34eb46396b14e67f95993e7b06555d6b8b6b9a6'
    'en-US'
  end

  language 'fr' do
    sha256 '6ed596b27678618b94787cacb6825eb1a50b1f79333fa2a472f18c9340159475'
    'fr'
  end

  language 'gl' do
    sha256 '9212efcdb2dd26a3695295add54ed0f7dc54a16fdcbc6d4c46c5611cabe17e7d'
    'gl'
  end

  language 'it' do
    sha256 '0302f198f06e8707d4e963dc996aab8b4b514b18278b569f72887c9e82fa9c21'
    'it'
  end

  language 'ja' do
    sha256 '20403786bd6fb54024149ecf6acad55ddaf440ecccf9412d154cd79dfedcabb6'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'fcfd7f62fd26bed1b25db6e5497ab739cbac1de45659fa59f814dfad1b5cf1d1'
    'nl'
  end

  language 'pl' do
    sha256 'ac4b5c73f68ca7fa8b7771b9b5b3e308484e26c5e484004b08375d2a26c5c06e'
    'pl'
  end

  language 'pt' do
    sha256 '8d7607c6a9b8c523e9362e625e418ab96bc66f51f46c288beeb936b2c9ba5725'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9f2c360fe70d2f72752c82db8083ba7ff78be4940353d5987e821feab5754f01'
    'ru'
  end

  language 'uk' do
    sha256 '78290d152f505e267795c9cf534f1170ede418908d87b2e63f644fe2724db6ec'
    'uk'
  end

  language 'zh-TW' do
    sha256 'b0add3b2b21b3a48f027e69e38764c0b56d71816fcd7f5fa89f41765389b83e9'
    'zh-TW'
  end

  language 'zh' do
    sha256 'c02f1505c91240b24d9bd9dfc586c329de8958a40626b1f0a27b987da6a13314'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
