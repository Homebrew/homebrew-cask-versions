cask 'firefox-beta' do
  version '53.0b5'

  language 'de' do
    sha256 '7e9f83ef1afa1b5fb2011f38601a92a59002b2b95bad0bd052b03473919e4928'
    'de'
  end

  language 'en-GB' do
    sha256 'e48345f100939db7254eeecb3db2f6f74a5dab61bd93ad627953382e1790f6b0'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '7c84aeede3df9b3e99d951898edf5b14660a17e1cf35ba7cb85f6143f8f02ac8'
    'en-US'
  end

  language 'fr' do
    sha256 '3f84e5ed937c4a8094066d3bb7908ec609e06259fe0e8b8e41737fc6bbb99cc3'
    'fr'
  end

  language 'gl' do
    sha256 '77011582c9db4b49e5f42834e586aae2788109d148603de6ed4739bbc2420c5b'
    'gl'
  end

  language 'it' do
    sha256 'fe13e2a2db7b1ed1acdb0886855715d756ecab2cdcb6fcea1aeb466591e9e262'
    'it'
  end

  language 'ja' do
    sha256 '64f1dfbf4620f17cdc5f1f61e2d881e1b275c8b60dfba3f5d1481c1492857b2b'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'e118b8756212b1cf1cf9861a74fa1f49d4c698c769fb4b39e30a95070ca84019'
    'nl'
  end

  language 'pl' do
    sha256 '1568bc2d7809ea24ac1e2707738712387961912a782e29a0134890e9c257436c'
    'pl'
  end

  language 'pt' do
    sha256 'e91cc53ee00a9382043d0f823c59d07b899b37cc62e993d2a7bc379816f1d501'
    'pt-PT'
  end

  language 'ru' do
    sha256 '31e151a55f5fdb794e639729cdf63e5e3a6ab77a1bb65b8267a0d956830e18a9'
    'ru'
  end

  language 'uk' do
    sha256 '2258d970e4216ff463a0da2b26ac25267a86e731a3aa7a342ee84784cc4bc83d'
    'uk'
  end

  language 'zh-TW' do
    sha256 '266d890921d9cd96a8e3647cfe50c61cec8582938c486c9ea2961e3a49a73c29'
    'zh-TW'
  end

  language 'zh' do
    sha256 'bb84cba7efc432bd9942f1568424bd021506327e0804fa69a96dcd5fa5f7799a'
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
