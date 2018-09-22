cask 'firefox-esr' do
  version '60.2.1'

  language 'cs' do
    sha256 'c1a65d472596677d8031e0a47414db59c87fe605272708c6fa27b8989ea32fba'
    'cs'
  end

  language 'de' do
    sha256 '5a90aa1143463cad8d537d9c8ae337e7eb92b632a6e93e072b1c172b6e2eec89'
    'de'
  end

  language 'en-GB' do
    sha256 '73688776deacd345b69a5e1beb7c624ea70ec52b583d092ef270aac5300a5572'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6622d9358f683ac9db5122fe786f44651970de17e608912dcd82a20e05bddcfb'
    'en-US'
  end

  language 'fr' do
    sha256 'a9ea2b70352303ba8ae36e48217044c21aabd197c45944b48cf43855fe886c8b'
    'fr'
  end

  language 'gl' do
    sha256 '3fcecbfa12c79fc698658e3bd66574444142829a960c58368b2fa83773209a90'
    'gl'
  end

  language 'it' do
    sha256 '99c891d9233ebf92ccafe517b5251244f827111da3c084ab2e453be25c92ed05'
    'it'
  end

  language 'ja' do
    sha256 'a78bcb310805a7b4a529757bffb1e48d153ece7ea4d1b1510ab17e19b5163630'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '45860a163d050ea1cd066182761daf17813332382033cd5a0bec354ae9e4fd02'
    'nl'
  end

  language 'pl' do
    sha256 'f2756fd78402b6e85894118c546b18248c344c9e251415415654d1f9cf7e3f3d'
    'pl'
  end

  language 'pt' do
    sha256 '338d90a76701cb36b434f759eabcd2e4831302f69926687b5369fd690d5143b9'
    'pt-PT'
  end

  language 'ru' do
    sha256 '26373f8915f0ef0b6d55058068fa1df07ade0386d3da87480042b3cda5295a9a'
    'ru'
  end

  language 'uk' do
    sha256 '0b5479b3581b24167e9edf7ebac26f407791fc14d6c9f5453ce5d3fed985e89f'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ce5a658c0eac699dba5ff17fb3eb0b8b23cf65ab0ecc6164a3a275d67c525987'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e9a32eff7547cf7fdd178aef3160ced23d4b214c4a4b69efb57474c30d40f227'
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
