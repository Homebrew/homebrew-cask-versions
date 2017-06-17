cask 'firefox-esr' do
  version '52.2.0'

  language 'cs' do
    sha256 'c17de949170124735616d70004251775635f5279c0d89dca0a97c906a20ad326'
    'cs'
  end

  language 'de' do
    sha256 '64509378f1c9a6ed7f6edd4040e0f7548a047047faf0d04037cf9f6de415ed9e'
    'de'
  end

  language 'en-GB' do
    sha256 'b1af75ee02c76c560fe560799c3a01839f22dec43dbeb6c7466e8298b6f51d04'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'e83c0dea856a5b5dc92a745e7c8372c500017145db622a12ac11f6ee8cb3069b'
    'en-US'
  end

  language 'fr' do
    sha256 '0f3ff17eabc55d446a0776e0fe62be1665b1eb1ce50932232f27a8af844eee13'
    'fr'
  end

  language 'gl' do
    sha256 'ac1491917226d115cdabaccd5ba84a86ee4f6726f219d4b5f7a8f695b2c08bdf'
    'gl'
  end

  language 'it' do
    sha256 'a141cd38e65adfd1e011d7eeb457549a097a1d0514df8616e78d4a6a74752642'
    'it'
  end

  language 'ja' do
    sha256 'c7e9428746a0f20cda28486a5c650f3888b0e9198dfc7c83cbea85ee76060ce3'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '432e56f7a61f5d867a294fcafd5607f8c0c1688b93fb4a82195ca9de8e35ce91'
    'nl'
  end

  language 'pl' do
    sha256 'd7bf67536b4a3eb0a1e1441bfe2e4a542867d2a61dd15e84f122a174ff8b8386'
    'pl'
  end

  language 'pt' do
    sha256 '5e75c03130223983865d8a210bae3e13eb560328f2bd9c147e92816e882c526c'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9a26e216af4ae5b0e70aad282592e1ea19906f8a28fd19c1b7859f372abd5f12'
    'ru'
  end

  language 'uk' do
    sha256 'e6059383279232b90ed5159723312fba343d9d815106cb7033e61518e2f6e22b'
    'uk'
  end

  language 'zh-TW' do
    sha256 '6a6ee3a667d3d63da34a0a82cf86a30ef7c00b7ba56b79c61e3cdf5218857230'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5add0fded82f7f44fa6df1b0e7d9b358f34eb91a96d4bbc3b7bc1aaa8c625b5c'
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
