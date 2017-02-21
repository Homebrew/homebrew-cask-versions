cask 'firefox-beta' do
  version '52.0b8'

  language 'de' do
    sha256 '63a5c93fb7cc28cbff107003ebce469b48d8ed02d90c09767c9f5567fac77351'
    'de'
  end

  language 'en-GB' do
    sha256 'eac9c750b2cf7687c186d34b27b76a0de4b761b95940d8693f42df2b61e916b1'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '1545d8a1349f53ab0d5bd66a91d3250fb5b133b3c19c24d68aa8dcc1fa1b89a5'
    'en-US'
  end

  language 'fr' do
    sha256 'cc61ab3879a110ed897bccb182d08b06158c7a4f64f69d13630d768eff5f250a'
    'fr'
  end

  language 'gl' do
    sha256 'e882504d5fab0a17d3933c1b20089ecd015b9c67c4d12f56641b7778aa588950'
    'gl'
  end

  language 'it' do
    sha256 '7aaa8b8d6311f167b856acfc8991eb1fc70baa33027dd41060569d939a54a6b7'
    'it'
  end

  language 'ja' do
    sha256 '7ec95df3b814ff2bea19551298ca41d53b7957690b8aa14a556799aa2b7154a8'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '99392f86043106cdb7720ec4cd29206ac419381e32c5c554ba09f53081637e77'
    'nl'
  end

  language 'pl' do
    sha256 'bad355e8f6fee8cef4e0c5b95a25338a91ef8ba8ab45d807ac431789d0b1c04b'
    'pl'
  end

  language 'pt' do
    sha256 '7b065a16cdc82cce3a2c0faf1e1408cf4be8e8a6f7ca9a94759210b2fdb948aa'
    'pt-PT'
  end

  language 'ru' do
    sha256 '6ce7787f4ee0e3fe571802274411d15bb13b03eae5c47d414146ae18d2727604'
    'ru'
  end

  language 'uk' do
    sha256 '00039acebe78ba9ce3a1a46f27882a5c970839a145028a97d8a788a34af013a2'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c1b50cd30f861eabc2aa0793bd30b7d9ae4298e6eb8cb984acff78e140498b1b'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2419afa06197abeb2f368314cc3dd5e208160a6d4e6d7d2b4ef659528599ea37'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/#beta'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
