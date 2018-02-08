cask 'firefox-esr' do
  version '52.6.0'

  language 'cs' do
    sha256 '9bbc9d0f50945d5a96916d88bf75dc7718c51fce69de177f019ad67556087d26'
    'cs'
  end

  language 'de' do
    sha256 'ebee9cf8217b8467b305adb690f070499ae8e1812c707a6994aca7942fc067b5'
    'de'
  end

  language 'en-GB' do
    sha256 'bfc45aa3eaeef6e85da34264138980f29fa61434605af0c379bceb9f1f3a3dfe'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9967fe4f93c4896a33fad2fb0f7ccac6f96a56d65d8c03e31d9528f6be3c7495'
    'en-US'
  end

  language 'fr' do
    sha256 '2a075e50a2a0e0a197d6c8c983753554b5cc8721a6b3fc8d6ab529e05628885d'
    'fr'
  end

  language 'gl' do
    sha256 '5af11694890d5b5796d6ad48944c5a9a277cca670065ba68a2f5defda0a8822d'
    'gl'
  end

  language 'it' do
    sha256 'b3c0fbdce0c2926535e1757123199f747de2daf1accb2ef135288c7cf47f55e1'
    'it'
  end

  language 'ja' do
    sha256 '6eaad2ef55a9c6fbc119641dc5f229e1c8c78701725d06355ac939e9e2c01f2d'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '366348ab95f860612958f39e70e663082a640b3b00f068c285343b600ee263f6'
    'nl'
  end

  language 'pl' do
    sha256 '9fe537fb82b369798845234bb6a8ee0de6a075eddbf7235ac3dfea9450c07101'
    'pl'
  end

  language 'pt' do
    sha256 '918e405fada078c691398898513fa9f8408e750ce7b1a75012ef0e91c54396b8'
    'pt-PT'
  end

  language 'ru' do
    sha256 'ff754c11bab9d1b9e55a836ae1ef5e9d7a319c56156c1c2d4a4526da5094b08f'
    'ru'
  end

  language 'uk' do
    sha256 '0097714f1886fbcba919bffc508be00990b7df3c135751f2a038d493bbdb8361'
    'uk'
  end

  language 'zh-TW' do
    sha256 'e3be57ad458d227755667c5186960aa70b22acd9f4c6d89d2f1d0371ea8425fa'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b921a98b3cdc3cf0f09667a9bb90da3ea909a678e87b0f0adaaf9d031cb83b03'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
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
