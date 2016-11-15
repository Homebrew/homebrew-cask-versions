cask 'firefox-esr' do
  version '45.5.0'

  language 'de' do
    sha256 '0b6e8ae029cca6acb7e1bdb1e99aa32eaca3e1190311a4dfefff307075d19d28'
    'de'
  end

  language 'en-GB' do
    sha256 '2ce228e4c51c4f35f302c53b2070abf3b762750a4c7eafd16f081910e4ced125'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd6b9f8c0a722b2ddb2138b13c5964d77cf29052f0553024e16ff391d2f5328ef'
    'en-US'
  end

  language 'fr' do
    sha256 '90a787f04945907b9ca747786f427ce32c0c069aab5e10642bdb4fb486e7aa90'
    'fr'
  end

  language 'gl' do
    sha256 '03b97cd2df722b59484434aa6ce6e73bcb120040800770755b769afdbeadf891'
    'gl'
  end

  language 'it' do
    sha256 '7f8aba5867b1d74c4d3fde2734bf4d53ddbb3b1920cd626e7cabaeffd5871922'
    'it'
  end

  language 'ja' do
    sha256 '9d89aa108ff794e9b6b304ee9df6e14cd9609a76c56d0127a35099673d909157'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '6fb0a9ef2ef544e276881a3a31329fc87264e5d5f957095d4a311e84ef121b53'
    'nl'
  end

  language 'pl' do
    sha256 'cd3f89577198e13403ac06639740c37f4e54f6d3dfcddc365f9a2da87836c11b'
    'pl'
  end

  language 'pt' do
    sha256 '838b08418fad9290f0751245e4c5726a81c972b654db508db7a854d14f531ff5'
    'pt-PT'
  end

  language 'ru' do
    sha256 'c9593c0be1daea67a38129c581d1291b8f4bc3b6be76b8cfd8afbf977debfc5f'
    'ru'
  end

  language 'uk' do
    sha256 '4da9ce5af1dc1d971aaa82135737013adec51e11be4736db0df6c1d14823d39a'
    'uk'
  end

  language 'zh-TW' do
    sha256 'd4457f695ed43eeafd9ff4cf14dca9c2e7dbafa3de4ff4e3fba60826d05fe848'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd6b9f8c0a722b2ddb2138b13c5964d77cf29052f0553024e16ff391d2f5328ef'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
