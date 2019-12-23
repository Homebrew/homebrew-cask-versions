cask 'firefox-esr' do
  version '68.3.0'

  language 'cs' do
    sha256 '433ea9843179108efe339d59aa21690a72154d9be29c8697c6749a0dca1c09e1'
    'cs'
  end

  language 'de' do
    sha256 '0c2cdcf304598ca15a8ea68a2aed666c5c0562d3c45e5c1a4af567aed039ba0b'
    'de'
  end

  language 'en-GB' do
    sha256 '28c079b25d86e31d9455dce2a58d69366a708993373f93b425622a08cbda7a2a'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '637464c112068c430415636c725639615edd40eddd2ed3ddea19af3d7b8575e3'
    'en-US'
  end

  language 'fr' do
    sha256 '037cd6eb542037ba601d265d2aa2b2411c1e3da99fbff2b4e0d03bac940645f9'
    'fr'
  end

  language 'gl' do
    sha256 'e9fe183163f4a05f55ee174a24bd82f3d10955c5dcf85b8405cc94db3b3896d5'
    'gl'
  end

  language 'it' do
    sha256 'a9a5711560371a512b92dca1116775ee9227f217f19172bce3b9ace7f58c4a97'
    'it'
  end

  language 'ja' do
    sha256 '780022ed6c5ad20a4a8e95b7252937e67e6ae4543dcb27d6537ed53bee5ccc35'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '7ced447d029f5ec98ff099a4286950cda6770d9578c0d3b52bd8500d0c606d8d'
    'nl'
  end

  language 'pl' do
    sha256 '1d514859c0d9456dc3f6425d36bd8c32834a8353d05b2886d833880b4d773516'
    'pl'
  end

  language 'pt' do
    sha256 '098c5fc1e3ad6a7766b58de9fdc35a345ece5c8edd61a9e5e096e8d2d27af732'
    'pt-PT'
  end

  language 'ru' do
    sha256 '3d86e1f07fb71ea01ecf68f717021bd5a90a8ad7888f3308ab159e24a8afffe8'
    'ru'
  end

  language 'uk' do
    sha256 '9bd3c78252786582f20390fd5c0308e62406ba5b1665582f7076d3bcc7117849'
    'uk'
  end

  language 'zh-TW' do
    sha256 '3fa0d190c00b95321fc5647e94bd03e16cd24c36b5f97c460e7d08147dc4078b'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e604d73685f98af29b6f2c22cf3ef0a0b683cee9cdae2794d4990caa38c5cc84'
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
