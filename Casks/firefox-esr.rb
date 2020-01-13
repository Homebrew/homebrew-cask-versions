cask 'firefox-esr' do
  version '68.4.1'

  language 'cs' do
    sha256 '55281b5c338e7f07b6cc5b532f2aab9363e2f5d309c75d45f31f6a48ed86ef85'
    'cs'
  end

  language 'de' do
    sha256 '8207d609be66f24af62dfdbfb87d819fa3553bb32a044c0d107c311a85704e0a'
    'de'
  end

  language 'en-GB' do
    sha256 '7ba16a6d0a39ad9c5dc12d40ae4f52edba84a7bb23eec0a10fc00769713a7a19'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '05635d82fbeeb713550e5656c0291b534428fb2e21d26cbd938c015d09709070'
    'en-US'
  end

  language 'fr' do
    sha256 'e2e833a61ce7fa40f201f1968db197a820bf2eb78788ca14b68fffcf511e029f'
    'fr'
  end

  language 'gl' do
    sha256 'ad1a0a55f51faf246080b36ac3dd7a69f9b48a610ca7283a12180478646a05f4'
    'gl'
  end

  language 'it' do
    sha256 'cac8dcd531413012f9dfebe72f24aa50ad55094b58c4fe492dc7bbb0cc08ec3f'
    'it'
  end

  language 'ja' do
    sha256 'd58cb33166b96de64afc5266e4b3e67d90ad043e3f2f2f47f215499b0e605a18'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd2a6d50da42d5e194cc495fbbc4b7ade3237af354871fc3968d40e06211623ce'
    'nl'
  end

  language 'pl' do
    sha256 'f7b8c4104c57aa73bbc884d5f3ecc67cda860165d128c049c7cde2ce8a5e3410'
    'pl'
  end

  language 'pt' do
    sha256 '37aeb6cba625296e7a1551057651c7e185c907086626b7b4f3ea68a4a47cccf1'
    'pt-PT'
  end

  language 'ru' do
    sha256 'a7e5284636fe070aecafdb6f3b44465b120e37bdc9cc06ec61fa95428b7f087e'
    'ru'
  end

  language 'uk' do
    sha256 'e07237653ac6e5548a35114c69d2698ed88e27f8a641657e3724a16f9279cc48'
    'uk'
  end

  language 'zh-TW' do
    sha256 'fcf334197130f20c9c78818e2048b6e220cd2bdeb5d798ae5171f29ea4c6934c'
    'zh-TW'
  end

  language 'zh' do
    sha256 '9499a93748a491a9a682647765bac43a1168e7a8b69eb7475671c1d748aa4a1b'
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
