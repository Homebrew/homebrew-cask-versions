cask 'firefox-esr' do
  version '60.1.0'

  language 'cs' do
    sha256 '8fd11e84e2a13b905709b48551348ddaaa65d39c0f1e0fbc925ef9600225bf78'
    'cs'
  end

  language 'de' do
    sha256 '769db2010a2a92b3f9d2e64925768e7dd400ecdf7d99c4d788ab7ac016ea1a54'
    'de'
  end

  language 'en-GB' do
    sha256 '893dda71ed99782a30bee944ba57720ff7a4edff63d4ceab1fdc352cbfbd6671'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '26e4e7443b22bdce63d7d135ea7df569d38386d0869154a026e96f19d1f8b63a'
    'en-US'
  end

  language 'fr' do
    sha256 '16070e8f3b36a04376ff2c1ef0382b6519b24d5f83843a44d8a263f10642892f'
    'fr'
  end

  language 'gl' do
    sha256 '2e04720319d67f594c06c8c97d5dde51a5d3b0ff285d067514faa3cc99a65f26'
    'gl'
  end

  language 'it' do
    sha256 '9cc07e009364ae90cdda51a184ae7abc111f9d510ff73c2367ab6fc7a0c41c47'
    'it'
  end

  language 'ja' do
    sha256 '4fe1d14529b04e7c406981129ebcd9b0b3bb7e159ede8c361b62d089e59fcf80'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '0ea15badef338c912fadb720802dd7bdcad576094dbbd05c4a4e1c8f9dd02dca'
    'nl'
  end

  language 'pl' do
    sha256 'f00a492166de13254f475dcdf4b5c7310a0afa1f7a744ca387ca90c53a5e350e'
    'pl'
  end

  language 'pt' do
    sha256 'a2b40213b65c6f8d295407bb28fe9fdaf65564fc83ec47ed0a48e00eb8102112'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9dec76aaaa4cbd0599cbb28f6a529c8e182a78fcc2f7fc251c26e25d4c25eaf3'
    'ru'
  end

  language 'uk' do
    sha256 'c5fa57d5ebf5e5fcfff451ed62474e210c86eb70449ffb04a01c2183ff952e8b'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c0b3daef788308e2bc683f3f5df522018c26226aa2ffc356ecd3796ea40f7232'
    'zh-TW'
  end

  language 'zh' do
    sha256 '463e5227268ede163e4dde98de7e9105710c3ac93e03ac88fc93680d1091b99f'
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
