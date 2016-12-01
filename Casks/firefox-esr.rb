cask 'firefox-esr' do
  version '45.5.1'

  language 'de' do
    sha256 '729e7dd96337930b8b12b1403b78e112d95092a6a48c81d5a6ba549adf7c6688'
    'de'
  end

  language 'en-GB' do
    sha256 '671a7c5e1c31c299060a239f671e2dc0feda90fb400919b9f91b32655cabb334'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '3a263c1871287ca73bdcd981921e44798512880fb9fcee0d6889481a93acb613'
    'en-US'
  end

  language 'fr' do
    sha256 'c41cabe616deed4cb7eceaf41f1d3c66fda01800e8a754fce0116ec788b28659'
    'fr'
  end

  language 'gl' do
    sha256 '13fa18ff6a79c68daee6a8403626fcfd8ef7a76dca53895b358a97f025a2a83d'
    'gl'
  end

  language 'it' do
    sha256 '2537311943ff98d73af1c41aa31477e7f994d70981fb7e0a3ee2b72f8457552f'
    'it'
  end

  language 'ja' do
    sha256 '44b975fac41c84f11a73ef383141bee4c34120c40536b85d42be7ebacf159d63'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd3e595d78af11e27bf7bc0da84801a245bed33d3865d1da9b45f6111aaada1f1'
    'nl'
  end

  language 'pl' do
    sha256 '40e2a31606d8a5a0d057d9cd6ce4691b9778f8e798625ce893adc82220ce4417'
    'pl'
  end

  language 'pt' do
    sha256 'fe6fe999d696f6d759cb34f4c4b6ce643f727c6be3f4da6b174f583a65cdd19b'
    'pt-PT'
  end

  language 'ru' do
    sha256 'd4e83857bf704478d5eb1741aaf9439f003b74b2bb39eec1bdf7e9af252a282d'
    'ru'
  end

  language 'uk' do
    sha256 '3204853a6a02b02fc23209f9fd021bc29867b1f21fe557dfbbe7e42b268664fd'
    'uk'
  end

  language 'zh-TW' do
    sha256 '704718d4ab7bb6db848162dd834ceeeafde819ded6bd116dea6d596b69fe6bc7'
    'zh-TW'
  end

  language 'zh' do
    sha256 'a312d2ad3ffcf0557cad7435bc65373c5626400d25ea655a014b0f1ea19040e0'
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
