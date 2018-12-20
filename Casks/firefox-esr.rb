cask 'firefox-esr' do
  version '60.4.0'

  language 'cs' do
    sha256 '71cb8bb47f780e599278048c453d20ebf5d5d62baa0841482465018a217eed48'
    'cs'
  end

  language 'de' do
    sha256 'ef59af50667c324b1fe92b2421f1b35b61c931bc894daeca11da0da0230a9dba'
    'de'
  end

  language 'en-GB' do
    sha256 '0e00e327664d70006aec72e05d62dd31cc3984b13a5cdfc06aee166649723e88'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9f482bf08db6e00652f72ea5b7e608250ed91626155a9314fe82e4e1826e61aa'
    'en-US'
  end

  language 'fr' do
    sha256 '0b9d9498f4fe0e5800c87e2e56de513606eac1c5ce6c18c5d0cccb4ca5e792c4'
    'fr'
  end

  language 'gl' do
    sha256 'ce6ed54a1528ca9452789b63ccf573bb203eecdb77b92eb8bca4198e303d1cb2'
    'gl'
  end

  language 'it' do
    sha256 '7b7b8d248fdcc412abfcbb6db0b9c467302d845978832d07f434834a1d0ecf34'
    'it'
  end

  language 'ja' do
    sha256 'b564c3a0e04d2ee3605667567d8952a395c55cb20986b609c01bfff9fc1ffc02'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c1108abda939af0436f7d13fd6f6c036206b22d0e4b1f2e1ec6b0263003b2adc'
    'nl'
  end

  language 'pl' do
    sha256 'd25f0bc5fb4ca88bea886764a965fc5ff957ea0eadc40c5f0c3af134f42be3c1'
    'pl'
  end

  language 'pt' do
    sha256 '0f3c371499925b027a9a514c3e3c9c8c62f04bd0e457c5d2eb4eb4af61c14338'
    'pt-PT'
  end

  language 'ru' do
    sha256 'c33ae643ccff3d71b546854f4e8c043db5399366af897e1fd24cee3e48bbd136'
    'ru'
  end

  language 'uk' do
    sha256 '740af3b04cc47e28365412ca831c7dd3d1bceea64672a1af48b3527bad5519d8'
    'uk'
  end

  language 'zh-TW' do
    sha256 'f7f96571749814d8cb55ac5ecc4c179e87169360d88e48689a21ce1c2652d59d'
    'zh-TW'
  end

  language 'zh' do
    sha256 '034668c4681da1457c2f2f0874e211b6793998ae079feeba321b85669f136749'
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
