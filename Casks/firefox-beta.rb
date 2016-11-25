cask 'firefox-beta' do
  version '51.0b3'

  language 'de' do
    sha256 '88a5aa4772dae4d67ad5e14efdf6a95f3d1a75cd497d52a098433a1e1a341959'
    'de'
  end

  language 'en-GB' do
    sha256 '8aa154e55a562bc9f7f6c079ef830efa33da201579077aca691fc2599ab446f3'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '538d36efc7ef05de2b4de3e3e4dc3bf51227ff3863b7d9a220d37bed57f6ad52'
    'en-US'
  end

  language 'fr' do
    sha256 '1e44b20b3a3dde77e813f4e6929f36c558297f5dcd81f2e177292368952911ea'
    'fr'
  end

  language 'gl' do
    sha256 'c5233ba34d961c1ff97b835deded0fce6505421a95fe2083627dd2e94602ee26'
    'gl'
  end

  language 'it' do
    sha256 '14e38982086b4860bb66dc444fb107d7433e6ba04798de0b04a4fbb1e76b0ae1'
    'it'
  end

  language 'ja' do
    sha256 '417ffcbca4bb4ef674fe024561cd376c81b7f2baec2a53e425d8eda763d48c93'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd2516c91eb8f8f5561181400dffddd6f1e5cb9ccb20fe83ac2808fb18a434da7'
    'nl'
  end

  language 'pl' do
    sha256 'a86de420af5cc5775c69e5b4af75b28e83900e4b32a366f93e773df80cb892e6'
    'pl'
  end

  language 'pt' do
    sha256 '06beb171f859e0597ce7e26e8f3e46cbed9d4fbef166ec0c16ef11fbbd099612'
    'pt-PT'
  end

  language 'ru' do
    sha256 '45238cc2ab1b0c0c8b6f05c8a7e57161b46276eca243305117c85b55681688a9'
    'ru'
  end

  language 'uk' do
    sha256 'e06d110f7cbb34546913d19ffc1079153ca308577adbccd45b468de3bd33eccf'
    'uk'
  end

  language 'zh-TW' do
    sha256 '07dd8855f105e5f0186c4c1fa656172078b031df6eb0832ee6920b05fb72494a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '0c664eaeac824da62ff976bec9b62f6d2207f12098cb541c7b2316f5f31b7781'
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
