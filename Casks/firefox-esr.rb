cask 'firefox-esr' do
  version '60.2.2'

  language 'cs' do
    sha256 'b5d4a55b94601d4eb05afb79f892fb4c959c79d2b7c9c0a82cf8340a7077f92f'
    'cs'
  end

  language 'de' do
    sha256 '1b368edb35bc57066c6571f000ac22c33bef9ea089e8ef26cbde03ba914f1970'
    'de'
  end

  language 'en-GB' do
    sha256 'a75e06609cbf6d8ef632412366424f35351f5dd8c6909036336e188e128d1dc3'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'fe43f3828746e02c4e8be71d7f8f533963f4129abf62dddecb171bb53b411c40'
    'en-US'
  end

  language 'fr' do
    sha256 '3d2b2758a71b1d271095c9d1700410692fea90670bde8e7a65c6f11f4eb78ff4'
    'fr'
  end

  language 'gl' do
    sha256 'bbce7d6060e4792cd504d3d427d4b4b00286b6d69222fb75507a25d47c7a53cf'
    'gl'
  end

  language 'it' do
    sha256 'fc434849033f7b8eff0fd8de5b466a82d126102d6749568dbd0aa910bd4ceb91'
    'it'
  end

  language 'ja' do
    sha256 'a6647de6b089ffb48b44e9f4821f30af6364ba95ee6df7d49ca4f5c5a429cfb2'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '28db0d76ababbf7eaeaf8f4a11428267ab1a18c79f3180aa7bc895cda79ba820'
    'nl'
  end

  language 'pl' do
    sha256 '3a5cbe0888b7292952631f00d8424ed548d37e7fd94127de006910385d440d73'
    'pl'
  end

  language 'pt' do
    sha256 'ae1a89cb17b292216af6d27a02d949e9667e1ee81bcfe559c3f891799edc58f1'
    'pt-PT'
  end

  language 'ru' do
    sha256 'cda4dd0dcf6b11952cdaad80ae26633437d21d1a4f861e46430af90738941389'
    'ru'
  end

  language 'uk' do
    sha256 '95f1e523c8c13c19077a8daf9178341d38eb847a230d9f434846d0d960611d44'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1fdaf25aefd93eda49e755fae23394a398862bbc487deb1aa00e6bf8cbd690d7'
    'zh-TW'
  end

  language 'zh' do
    sha256 '6e8f693571aa6e761f47e82b8d3bd069245d8cd7d74ba9f3f9571fc21c9da6fb'
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
