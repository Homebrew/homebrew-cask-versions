cask 'firefox-esr' do
  version '60.7.1'

  language 'cs' do
    sha256 'd7444f10e4188bab777531c35874bea7a0858900a79e8420f88b66ba3344e89e'
    'cs'
  end

  language 'de' do
    sha256 '5b864ab8d924227bbc7aa3ac66f80aa531a1bf9f15b814b5044fc4b412a729b0'
    'de'
  end

  language 'en-GB' do
    sha256 'e997249b5bdac21ccd7a353d79167c9017e7c80d1f81f1b979e97042a7e84ae0'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'cf507aaa0f5cb5c11b02fd228dfaafdb51afab61c4b7ea144458d73478386463'
    'en-US'
  end

  language 'fr' do
    sha256 'd1711c8e3c664e840d5e16d8d903bd3dd880b4c1a4224b01f4a2c55dd3fc1828'
    'fr'
  end

  language 'gl' do
    sha256 '2128dc75818afc112ce333f86529fcfa2d8cb93e3159396c209061171636bbc6'
    'gl'
  end

  language 'it' do
    sha256 '75edd74dac6887d7dd09787878dd3155c543261d37c70e961289df52fb7cb7bb'
    'it'
  end

  language 'ja' do
    sha256 '2b45bb3e68d0aa03bdaca1fe0da834db3bdb30c61acc999ee9e001fcdd8331bf'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '5353a9be3d742f1c0b4467e9db92b4f5f58dd09598d698329e611f171ad30376'
    'nl'
  end

  language 'pl' do
    sha256 '6b2f2874efd17850e77327908d1fab91eebbb5428e04bc59459bd69fb35c56d8'
    'pl'
  end

  language 'pt' do
    sha256 '47abd601f99aa93db0ba1e0764f3cabe2262bc34d275c5a5c240427cfe864e84'
    'pt-PT'
  end

  language 'ru' do
    sha256 '61159c12009247d96e4d4faec5e2f58c8be9bbe709ae21dceab04b7dac6ecdc1'
    'ru'
  end

  language 'uk' do
    sha256 'cb1eb3054e95aeb627bd146cb46c43c76aba70a09ac4f16a74b6c24ab1c5ca9a'
    'uk'
  end

  language 'zh-TW' do
    sha256 '3777e8fbb74b8cafec78e1f983e7831da6b11d7354021500b8cc3a4f9c0743f4'
    'zh-TW'
  end

  language 'zh' do
    sha256 'fa8dbab80ab6fae2e11556c661e78fdeec78f33e51a669887931bb246ddc5ee2'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-esr-latest-ssl%26os=osx'
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
