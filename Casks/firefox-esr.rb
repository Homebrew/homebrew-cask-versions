cask 'firefox-esr' do
  version '60.6.3'

  language 'cs' do
    sha256 '237a80ab9bb52e40ea1e560582b2b2ba3cbd431d559ff62f607cc815fab457a1'
    'cs'
  end

  language 'de' do
    sha256 '8a7d733a90e04e3bfff03f0d8d32b8333287d2182b83c28c396f6bf4363555da'
    'de'
  end

  language 'en-GB' do
    sha256 'd99604ea09524ca5fc71c99a1c1f3f05e4d9c661afffdcf884a83a4429d8075b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'aed4bd947437173409ce8043441c03c48e746a52f1a4ff1f7a15949345a06fc6'
    'en-US'
  end

  language 'fr' do
    sha256 '3f803afd10ca5b76a44f08b0e688f55c8e7f6142356135eff033584481be0f70'
    'fr'
  end

  language 'gl' do
    sha256 'e267ec4c678639ec48e5a99bcba0ed6c6f07446b44a419f68416994681c32959'
    'gl'
  end

  language 'it' do
    sha256 '7277bb114461e10dc00d08da6da518633163110d208bffd178621e7f9302fdb8'
    'it'
  end

  language 'ja' do
    sha256 'caa49244b8994f951626a6451a774f19c3e68263d947b8f40d7b738c4564a98c'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd071400f4cbd23c8625e36143bbd230489b181f3cf157d981600287b4192cef9'
    'nl'
  end

  language 'pl' do
    sha256 'af56981aac1ce8a63fbac456f41d20a2a7879ca8d35cdf27a34a9b8fd1216a03'
    'pl'
  end

  language 'pt' do
    sha256 '0ad452028ec2828e4beab4fc79805e6be46efa684d1bb213ce8c5de775df537a'
    'pt-PT'
  end

  language 'ru' do
    sha256 '074ec32cc4905109b2fd466534206056404583652ac8129b1abd5c7ddfa689bd'
    'ru'
  end

  language 'uk' do
    sha256 'eaecbaefc8bff7efc8d73303f82899bc5b06c541b9530ff8d1e1eea894871327'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ff70fce9c3ad8e29a5965e72dd56d19cfeacfa32bd9db63f7750b782ab48151a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '129f0277c3fe24cd5a8ef1a8e1a64d90f649845c856e80094b9f84ec4573905e'
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
