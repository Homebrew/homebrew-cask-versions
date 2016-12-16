cask 'firefox-beta' do
  version '51.0b8'

  language 'de' do
    sha256 '508e526ae205d6be10aaaa04d539a178da3f37d9bf35d7dc02acb8570cbf3048'
    'de'
  end

  language 'en-GB' do
    sha256 '32ec6b9c1a622dd9f62fa5a9963bbd51722995c34d707f566fb09f69c8d2f094'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '07912a18d4791cc281431453e9587849b24c899232eba0194a5fc2ba78b3840b'
    'en-US'
  end

  language 'fr' do
    sha256 'e8221b75c4eaf36d268219f0cc88e3b80a55046203d4e6055cd9f96cf74a59da'
    'fr'
  end

  language 'gl' do
    sha256 '0c05df672a5caecc3bf7067a7efb7aff15cdff945bb9a4a581493607df97bb3d'
    'gl'
  end

  language 'it' do
    sha256 '1df50cf6cad7aac906bf6fea4c74b0397393ce782241bcfbd2d7bbfbc5e23352'
    'it'
  end

  language 'ja' do
    sha256 '25eae3bcced62fc80488663d15a3c02b5583f12814b18aa6c57d2d8f19638d51'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '84d1084d53a666595878a36d34dc88b83fd15731374aac2fbbf983626ae26c48'
    'nl'
  end

  language 'pl' do
    sha256 '07bb52b551b0cb044193013e70c7c6264a9ff8d642e79172d4de29c3aa91b40b'
    'pl'
  end

  language 'pt' do
    sha256 'b86f77317c4336a7b21bca5d4bcca4900427d20a74f05937e59d37aa21b8a0ac'
    'pt-PT'
  end

  language 'ru' do
    sha256 '558adcdbb698add34f0b75067d8013d103e0e7a1755d42410ef0f9abd4c72ff3'
    'ru'
  end

  language 'uk' do
    sha256 'bef16f21b6ad5240f5e14b1e96590a7533a99305b28eadbe6887c5c36ce5552d'
    'uk'
  end

  language 'zh-TW' do
    sha256 '6290eeca40ec58e66938539ef566cbb569f07c2c9261baaad8ec4b176a135f13'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5e3f5cd9d4a91e660cf7d6c57c38f0d926887a7cf8a0abd2ea502daacc315a92'
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
