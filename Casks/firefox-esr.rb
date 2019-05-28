cask 'firefox-esr' do
  version '60.7.0'

  language 'cs' do
    sha256 '3627403ccf4d42175a58d87975e94ca8b86259dbc7b725ecb42ad39662851f31'
    'cs'
  end

  language 'de' do
    sha256 '62ce1817788862497663da64e86a8a193429bad7a4935a67df0d3816ea2a63f4'
    'de'
  end

  language 'en-GB' do
    sha256 '8d36b66b74e99bf9923cc115125da8b23d66d1538b8996aa5065219f63e8ac86'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '98cfec127db5dbcb352306851e6292af11efc0b0c0780ba076d3747521a6f015'
    'en-US'
  end

  language 'fr' do
    sha256 '129a28d70d04331a0e4ae5c2a698eca12e28396e60245156719e1c8500b9a35d'
    'fr'
  end

  language 'gl' do
    sha256 'ca85001737ffa95bdd0a4b061635896c446f44be9f53570c127bf6fd4b88476a'
    'gl'
  end

  language 'it' do
    sha256 '3614dd17e41e6e939e76ebf1fd0906ebc165658c0a80e626717029898ce258bb'
    'it'
  end

  language 'ja' do
    sha256 'c643dfe84b1706abc519aa6879c298f79b18c2c6e05bb2c5b72694ebcb559eca'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '8bdbf1385cac63b5057fe42ea71fc98ae5b36ad6550b5e1fb3fb8f11a0cdd356'
    'nl'
  end

  language 'pl' do
    sha256 '09237db7636d653455497009b7ff0a0839c7cce77e5ff8f58cab2ed4c7cd69c1'
    'pl'
  end

  language 'pt' do
    sha256 'f5e83652465e3bb3b905bb88bcf59e4bcfc76c1e5675ab744cab5e5a072a2418'
    'pt-PT'
  end

  language 'ru' do
    sha256 '101dc850019656ff851cebb7e98b130260d333f310e5aa06dee5f20d3bb1307c'
    'ru'
  end

  language 'uk' do
    sha256 'c5ad2006b00cc133febf022e2ba350bd50efbf80085bdd34a15ca5bf9b1bd0fa'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ff1b083a804e965a9996178f2065dc64fd899b198dc4520b67d9c4e522d76076'
    'zh-TW'
  end

  language 'zh' do
    sha256 'c49aa3d03e084ee3dc3e34db3e6bd83a73a02dd8d9161ea2e8ae3751faec268c'
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
