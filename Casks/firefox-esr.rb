cask 'firefox-esr' do
  version '60.3.0'

  language 'cs' do
    sha256 '6ccd31f1c8c3eec4b5a9678cba9eeeb26a3fb4a14289ed1743b267a807e3b273'
    'cs'
  end

  language 'de' do
    sha256 'c3b92b4d045fe409403f092cb2bddbbcb4357b8cd359a73f71f27cdd0b21426f'
    'de'
  end

  language 'en-GB' do
    sha256 'ba85c934749e4e05a110855cf33d33f89d88313f1a03b57f66cad3a40bb03a06'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '94ec8e878fce8e67b92c764b38049cb9befc3b9ab6deff243219aab73d194764'
    'en-US'
  end

  language 'fr' do
    sha256 'adfdd6deef26074e9c63f16a10245161559ad3d8153168b2aeb4a6a1011614b5'
    'fr'
  end

  language 'gl' do
    sha256 'e1695163ee08ea7b6ffab644cb8b7d611c8b932c46b78aa3a65096cb5d9449c1'
    'gl'
  end

  language 'it' do
    sha256 '332cac704dc0152f55f4bd0ed0bbb26126635e0f3ef59b4849704ba92efad233'
    'it'
  end

  language 'ja' do
    sha256 'd1559bb76f3b6e6c5653e8ebf4581289c7624d090b545110c5ef627d6676a3f0'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '17b6ad2cc11769dd60d2c1376a04c07bcab3d23f961c9b656446dffa5f888bd8'
    'nl'
  end

  language 'pl' do
    sha256 'bbdac598596ed18f829095f2d8f187247df28c2e2a08c534ab43b0bee0ebcc01'
    'pl'
  end

  language 'pt' do
    sha256 'bf7cfe87733e007f9cb9d2f21820702a9411a5b8cf7f374e2c4aa63fd4f998a2'
    'pt-PT'
  end

  language 'ru' do
    sha256 '2d10c83cb5021986a784acd28c22fcb1f1f708eb52f8edf5c2049cfe5bceaa61'
    'ru'
  end

  language 'uk' do
    sha256 'f18f79c5e2ddc92e349dfa862666f1284f7f226344b6700e371941978db6806a'
    'uk'
  end

  language 'zh-TW' do
    sha256 '0f7e5ea0623e2a14bf2341734b471123118fb86241886ec985460cb85ffab6a9'
    'zh-TW'
  end

  language 'zh' do
    sha256 'c69dc323d03e8ca3c82046bec62b31caa1fab3397387e769c6aeb7bf0a284ed0'
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
