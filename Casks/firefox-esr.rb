cask 'firefox-esr' do
  version '68.6.0'

  language 'cs' do
    sha256 '469aac9970c9cbdf4c3ca2ef02e059a6d8a0357f9508cd1dd3d98ff41aaf1516'
    'cs'
  end

  language 'de' do
    sha256 'cc3efc356c0b8dcfa06650be2319104050be09f0149544970930fb64ef51ce51'
    'de'
  end

  language 'en-GB' do
    sha256 '7aa7f93419702e5c0a8d0c93841f41b2fbcba13abfb6d30c9cf4b1e9a7f7b61c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd60eaec57d62a42317eec1f0e7ac3d613de2f9bc8a758c650d9e9ad9b50d2584'
    'en-US'
  end

  language 'fr' do
    sha256 'acf50585c707702c202931fecb18a30f8e7917f03bde2a1fca42975b98a6414a'
    'fr'
  end

  language 'gl' do
    sha256 '9b50d66f63205fab0f3e27b4a935da05c1a9e90015651179a4aecb1ddefaf7ba'
    'gl'
  end

  language 'it' do
    sha256 'b009cc56521b78cc7f2e8edd8d69d74cfa31960e5b07a280756f895aee9ed476'
    'it'
  end

  language 'ja' do
    sha256 '9ab9c87b1c6eb9869980dfc7df2b8e4f8a07209393be5428dd733b6f394638bd'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c8a66350a224d29836622adcbcdc3055324da1b684231b97d1334c60c84e04e1'
    'nl'
  end

  language 'pl' do
    sha256 '50397c8e3419dd64b4010bd7c14f14af2f7b410ebc37ce6e4d19cecdac5de20a'
    'pl'
  end

  language 'pt' do
    sha256 '35a70f6e31be727d785c0b2d42a67c837c4c92f8b8c248866f0250c0f416534c'
    'pt-PT'
  end

  language 'ru' do
    sha256 'beae22c5612bf60deb5af0f626047ac2ca190092fd831086fd34805b97521fac'
    'ru'
  end

  language 'uk' do
    sha256 '95c8cfaa5c71c6c2c8245e60fbf0f3648f4bdb7ee076d93383ab67d4efcb0ba2'
    'uk'
  end

  language 'zh-TW' do
    sha256 '32de6888aad6d7981fc3e079ffa29c1b10409057b3021113b084c82a006a49dd'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd4f0a7878ee7fafe0d7f2ce786b142695e0c4fdadc0037fe776baf518bd07e36'
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
