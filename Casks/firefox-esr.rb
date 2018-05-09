cask 'firefox-esr' do
  version '60.0'

  language 'cs' do
    sha256 '087c7770b2e690850d5416b114e2dfe2920b3094fa754fe3a042fd186ae89e45'
    'cs'
  end

  language 'de' do
    sha256 '51540143d4748a7360f7be8ac6a0d96781524ea8ca9b417aa17f9dafdc8c067d'
    'de'
  end

  language 'en-GB' do
    sha256 '9ab6d1d7a00ae09428505a51bf1e4246cc1eb828bee21b8e209c5dfaf4a23096'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f6e40c42e2e4fbc70929c78cb41acf3e2ed7754aa151efb43f21ba259332d63c'
    'en-US'
  end

  language 'fr' do
    sha256 '8ecdb911a93ac81119f6638aa1d5f1969f309f425dcf848ee551f2c3b3ee9979'
    'fr'
  end

  language 'gl' do
    sha256 '3040bed617a1e353fdd118293d374132e4fa9edcd2f2231e92dd2c79bc6c6c28'
    'gl'
  end

  language 'it' do
    sha256 '9deb066300f99718f46869ed205eb6f1e121c7f565e6d629758f4e96d04e3eaf'
    'it'
  end

  language 'ja' do
    sha256 '97f8d418abb98f7a7b8727d011fb187d6c6a38cd7d0ba1d5b86e63579a417160'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'a96e6e99b199c7071ff25e5df0ef9dde3cf2617bdfa3911895e32fc9c5d09834'
    'nl'
  end

  language 'pl' do
    sha256 'c9722d0f4896956e7ae9d9ff2723c22a900eddf3337bd3c3636b3b504bc38f2c'
    'pl'
  end

  language 'pt' do
    sha256 '3b57300e703c34fd3e06f52c6dd510fc6945d99e4d24249732bf7165b5dc629b'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9b5b139c2eb17c44190c1c71f5113d549c0f1e447312337a3fa973569cc5b42a'
    'ru'
  end

  language 'uk' do
    sha256 '1e3bdb26b9981fecc38fdf717eb6b64cfb7301a480b6ccf702951b9148c84ded'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c2768cfac20f5390eb276b527b62b9b0d06d413ca3de735a2c4f56d5af3b8be6'
    'zh-TW'
  end

  language 'zh' do
    sha256 '92cfc3b09d1f851133dfefc0c90620ba24d353cd7e6a82f82aa4d7345b7bbb39'
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
