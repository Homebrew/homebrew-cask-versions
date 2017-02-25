cask 'firefox-beta' do
  version '52.0b9'

  language 'de' do
    sha256 '381feb32485ce13c907641256c3771520aede353b8a490fb4b5ba1862cda6967'
    'de'
  end

  language 'en-GB' do
    sha256 'fad254e9b963a72d93f353bb8d30a66396a2e049900fa7588d89e81d78dd6275'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2411d42ad01be30e04153f7dcd2e0840767bf0e139d3657a02443616476e57f5'
    'en-US'
  end

  language 'fr' do
    sha256 'e6c4cf9f2165c7aa12c1a57cfcc433e7fb26d195d40afa85663a4760e3f8f908'
    'fr'
  end

  language 'gl' do
    sha256 '562d30cb3bbd67e0150757bd6cbcde6a6d429b0a84bf13018eb5b73d66c3a6d5'
    'gl'
  end

  language 'it' do
    sha256 '1587c7ff79199e47561858fc34e8f83194779feb7d18894b50dc2e16b55bcefb'
    'it'
  end

  language 'ja' do
    sha256 '67be8f02364f4f3cd543ebc31a7858765d985038c1b4ec67642103c3ccc9dc7e'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'e5b2d7c69e38227eb90db862391c325d675176c3a56ba0df012eb13df83681b6'
    'nl'
  end

  language 'pl' do
    sha256 'd188c614fc0820cdacca602a7b4d7848b45b1cdf602a86a1b07971917510e18b'
    'pl'
  end

  language 'pt' do
    sha256 '5d5925a612b726606e9168f93176ffbb37f1f19a3a04de6dfd326eea280cd91b'
    'pt-PT'
  end

  language 'ru' do
    sha256 'c25c1afc01a85c61202d6bf413d2307d3eba4f12c9750bc8b49c76e54f2c8025'
    'ru'
  end

  language 'uk' do
    sha256 '6c888dd219a9089baf17bd49190de61243adfcc9ac97add4615681f304781c55'
    'uk'
  end

  language 'zh-TW' do
    sha256 '52a46447e57d51b4e5262f4187f762efeebb2c1c3ea23ac42a93d622c8f2f52b'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5f12c887a80ef3dda0dd2ef2d0bfc92db1f1b75ab9c7ba9be00264aefc3198e3'
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
