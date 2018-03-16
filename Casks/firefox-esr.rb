cask 'firefox-esr' do
  version '52.7.2'

  language 'cs' do
    sha256 '465dd32952dffc8499136929b9b04a43fb5be8f53c3dfede7383a266575f5011'
    'cs'
  end

  language 'de' do
    sha256 '4b8e1ead4a6cb521bfbf4373bc3b371cdbffad4afce698ed42a860eb7c95091f'
    'de'
  end

  language 'en-GB' do
    sha256 'e8d59785a880d066feb803b640f96c6637b0c4c3e3cc72fb5102870a88288dac'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '699b85133f7995044ec94cef591c57424300142aaccddd9a3da17206ad820028'
    'en-US'
  end

  language 'fr' do
    sha256 'f309ca2c4ca4c66dc54db0703dbcc26305f3719e2d4a0c8a15df6228f1ed3664'
    'fr'
  end

  language 'gl' do
    sha256 'bd490b7b2a3a8f0947dd5b0fbb3e1f7f190f8d3e403327c31987b0b3d0e3257f'
    'gl'
  end

  language 'it' do
    sha256 'a5f266bf6455a77ef96137b31ef38af5594e06bac25e43220d01b94741a70b73'
    'it'
  end

  language 'ja' do
    sha256 '0cbafec163e6ebf61835d0b823acaface640326c357da8b6787488e972e27e8c'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd8385cf79e2ddfe725ee425fc8700f1beefc9042b91d66fbfc2b107ac5efe162'
    'nl'
  end

  language 'pl' do
    sha256 'f86337cf72c0fdd8ad3ba3c9c0218010350624e03874a0c69508c846d8b2267b'
    'pl'
  end

  language 'pt' do
    sha256 '98414a2f194768a663faa2b7e5896390b33bb7931da135dfb32d1e965f36dd5c'
    'pt-PT'
  end

  language 'ru' do
    sha256 '08ce666647157c988afcac1e9508e402c125c79708e7560250432ac492057985'
    'ru'
  end

  language 'uk' do
    sha256 'b2c8908f097ee7a8ae9e86e1d29a9e136bb24ced414fc48bcacdf713bb7aab8e'
    'uk'
  end

  language 'zh-TW' do
    sha256 '49c5e1d5637a6ba1b7b2745307f225a78dc15e4f4fb0a4c6188875e5e01fe461'
    'zh-TW'
  end

  language 'zh' do
    sha256 '83bd1e7e9c5bfc0f8d5ed76de7ff4fb38c4d87c8f024b78c4aef89f1a4bffe12'
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
