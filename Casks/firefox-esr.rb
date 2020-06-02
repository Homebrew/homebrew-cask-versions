cask 'firefox-esr' do
  version '68.9.0'

  language 'cs' do
    sha256 '1568a23b34b2a425d758ad116ea70e2ec2211924a430b2274cf223c943cc4304'
    'cs'
  end

  language 'de' do
    sha256 '16ae4627e1f9e26f3494868d4fcf11d0951fa74e721f9ce878a0c3c55aa49748'
    'de'
  end

  language 'en-GB' do
    sha256 '66a27a0153b18ffa93190d5b7498e685054476d244ee3df60bcacaf1727c8d98'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'b542f03b610ae7f894bef979ab5087762f0b601cf88ce8f9e86919cce632384e'
    'en-US'
  end

  language 'fr' do
    sha256 '8af8bc17d3d40a4669ee36e1c292d60b45595644d07e6b9131aaa5e2a881a02b'
    'fr'
  end

  language 'gl' do
    sha256 '50edbcc99e132ebc8e418ddf802109ce5f8bf8d933e2e2a0228809d1c20e59c5'
    'gl'
  end

  language 'it' do
    sha256 '3bf6caaa33c95c0f19ca9d4d7c77728371fa4c01b41e6587650225484eb5e946'
    'it'
  end

  language 'ja' do
    sha256 'a4ad089441543d834154a39cb77f7048e7c24c782ae16b06eb3cf7f7f4b4d6bc'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '40bbd243ad3a02994bc9b194c21a31af3805daff1de3821bf486b3d78b36aeca'
    'nl'
  end

  language 'pl' do
    sha256 '02f4e30f24e96a146322cf3367e1270370b3288a4bdbab4d03ca0a56d8b7e246'
    'pl'
  end

  language 'pt' do
    sha256 '7191d48269db45153297c8efaf215e59a9b8eac9b4c6dce8c85459ea810586c6'
    'pt-PT'
  end

  language 'ru' do
    sha256 'f256bd5fec7a32c875907a8c9cd1384d4a840b74022f98902bc60772ecd0897b'
    'ru'
  end

  language 'uk' do
    sha256 '3c0d493b1c6e341e03c44b4762302ed79f9d228c1be6db0788f9a79dd2a04d2a'
    'uk'
  end

  language 'zh-TW' do
    sha256 '791ac23dd400e6615c95e22d6db7056b93af1b186ed23f7ea3c05df9a26777ea'
    'zh-TW'
  end

  language 'zh' do
    sha256 '3c2637cfa6020c2e12ae84118449e97c843ea0c659f159e9afe760d970130d51'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-esr-latest-ssl%26os=osx'
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
