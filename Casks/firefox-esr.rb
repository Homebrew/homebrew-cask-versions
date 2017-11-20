cask 'firefox-esr' do
  version '52.5.0'

  language 'cs' do
    sha256 'ace881284c48d50f932b3ef22cb8c470f0f2a814fba62e0a7521fdc2fccfa963'
    'cs'
  end

  language 'de' do
    sha256 'ec3607495825dfc2f1c36eb8ca1a8a0b214c83505c870010d1e6c9ba22cdd19f'
    'de'
  end

  language 'en-GB' do
    sha256 '34e4ae65568b1cedafbd0cda1dcc51bab3534f5439380c9860fa700aba28d472'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '0b8a1a3f3ba181537042a5ecfd91427d2711a086a2c5cef63c0a4079949117c2'
    'en-US'
  end

  language 'fr' do
    sha256 '675377815cf64ff6113653f3d0a1113c64d1ba22fc881c55969f13884bc9e024'
    'fr'
  end

  language 'gl' do
    sha256 'f0b18f5e025161ef301ff2bc2589bb05307429b4bb25dfbdbfd053b5910847be'
    'gl'
  end

  language 'it' do
    sha256 '754c3d38f8b27e3b9c71588f2fc1c4a49b6782d92e31ec5464af3e33743d92bc'
    'it'
  end

  language 'ja' do
    sha256 '00dfbb3598ab8923f29d55af3ded9aa5b189d36bae1c0cb31ee76a86f5a7f83c'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '4de5961403570d27b2f47332a176be14bfaaed704c7c39ac46221fce57da28f1'
    'nl'
  end

  language 'pl' do
    sha256 'bde1cbc033cebc79dbc41fd034634c63d355fd04cc058997f4f47744178f15df'
    'pl'
  end

  language 'pt' do
    sha256 '97ccf9c4d0a0c8f35c8bce93c3b0a2660508e99c3182bff9217953b10f2a76f0'
    'pt-PT'
  end

  language 'ru' do
    sha256 'd7161a4478662a777b3c4c0ac3ac7044f9c43b9cfa01ec0042dd098151960070'
    'ru'
  end

  language 'uk' do
    sha256 '1f487b356fef5da4a3ed830bcf616c1fda47a902cc92c806b6fe832b17cb8327'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c1fbe9359271c51efc1dade6f839ce14f804a667a1ab611193a2902fd8ba18ff'
    'zh-TW'
  end

  language 'zh' do
    sha256 'bdfab4d83993521019e4bf69851a23738140b70a5801a3b61f7a75cc6744e545'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  app 'Firefox.app'

  zap trash: [
               '~/Library/Application Support/Firefox',
               '~/Library/Caches/Firefox',
             ]
end
