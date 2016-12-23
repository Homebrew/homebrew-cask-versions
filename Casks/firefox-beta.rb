cask 'firefox-beta' do
  version '51.0b10'

  language 'de' do
    sha256 '985f0bda41444122e09e9d8c923035cf6be6ab4f8637421cdf04f30c455da69f'
    'de'
  end

  language 'en-GB' do
    sha256 'df0d249d94b42c1e8eba6d911fd51a8e27d166501131abd0b42cd01e643df830'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9149f187e5023a549b350983cfdd75f546f72c3e043233c89f3666a82fa05c05'
    'en-US'
  end

  language 'fr' do
    sha256 'c6d05e0fc300ef5649656256f761e98f13625f5d0054c1bd85e3aba9dad40e83'
    'fr'
  end

  language 'gl' do
    sha256 '1996b60284288ed08776a4b848b1878fc228f9d6f941801aeedfcd90beecd3ac'
    'gl'
  end

  language 'it' do
    sha256 '2540ce96b2b58d83d60b83d53399e71d7e75dab808a27c2b2b557e3b6f4a3c8d'
    'it'
  end

  language 'ja' do
    sha256 '4e420c925ebaa04d9077cb0e4c060010d66b2699b2d1262fde5d3e21e7988ce5'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '11b9a8106ffc71e949440aec88c0aa25d763816b563dab4c27f7af78a8ba4f7d'
    'nl'
  end

  language 'pl' do
    sha256 'a6c8773cc66bf80fe019726bd1e13c5ad90d155fc5342f485da73b571c6bebb7'
    'pl'
  end

  language 'pt' do
    sha256 '5e17b2aea729e8bf460ed52826263228e5fd674cc64320509d7719655f865404'
    'pt-PT'
  end

  language 'ru' do
    sha256 '73262eb406c57a8b2e304704e90751babd94f6862fbf24d059376aab702c2968'
    'ru'
  end

  language 'uk' do
    sha256 '094b843cd4ae18688c32e8f203596ebcf3c35d419d7747c0036bee4cb451d7d0'
    'uk'
  end

  language 'zh-TW' do
    sha256 'bdc6056c9e6f988fb46eab937c26093b50e2cf897d787f2f93734d839e047ae2'
    'zh-TW'
  end

  language 'zh' do
    sha256 '9ea8885cf4525fbe714d1297c39a130dbc9cb5ae4d39b046b37b02dc1ad1843f'
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
