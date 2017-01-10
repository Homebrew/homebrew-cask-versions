cask 'firefox-beta' do
  version '51.0b13'

  language 'de' do
    sha256 'd171346df7c168674fb711c6ec3328e3ccef7c8c220be61cd2b363522f54b49e'
    'de'
  end

  language 'en-GB' do
    sha256 'b76079de8a866a3c0d03bffbb90306ad782f8917c9675a69df09a3d56456fbaf'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'be2205ca5c51d9dd715e62ebcbb2b7c92899dd55f570bc068fa3358e1ab9d383'
    'en-US'
  end

  language 'fr' do
    sha256 '8238d90ac34f856349044382866fef05f23b749f5718872998a844e9012753fa'
    'fr'
  end

  language 'gl' do
    sha256 '736590f4899489c8a5fee457c7c49e7b781152cb3034819da86c4a46d8fbf84e'
    'gl'
  end

  language 'it' do
    sha256 '68fb78072a4c8fb12670faee91687f6bc38a35b42cfe0cd58c5bcfdc3f417ce0'
    'it'
  end

  language 'ja' do
    sha256 '8744c65dd9a2ca83530e3c4c91c803a3c66181decdb0b174817d7699286e6b09'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '8738cba11969da1d33c5452430b583e59324536a6b65eb19915043d45e432f52'
    'nl'
  end

  language 'pl' do
    sha256 'e3501f9caf3a27389c280e524332fe8004f6ba4572364bd62098994e680e0083'
    'pl'
  end

  language 'pt' do
    sha256 '7927adda4e191f79963fce668a4ebd69568ca7ecee4f992d5ff03bfd54229cff'
    'pt-PT'
  end

  language 'ru' do
    sha256 '517c84cba48da89f8f271b62f2a9d073916c637301d84588549f00b66b1c830a'
    'ru'
  end

  language 'uk' do
    sha256 'af9c66ab1f3f8d21e3e45b52e2944793ceac14183968160a203f7f6a7b3b4e44'
    'uk'
  end

  language 'zh-TW' do
    sha256 '8a1e8dd19c3d73f480eae58392be540f3b76be41fdb1cf8b71d5412b6dbde2cb'
    'zh-TW'
  end

  language 'zh' do
    sha256 '33c1473012fe5863010e1d67055399fdefb1b89c587fe94e80853d29037e1ece'
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
