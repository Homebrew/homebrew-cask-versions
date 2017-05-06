cask 'firefox-beta' do
  version '54.0b5'

  language 'de' do
    sha256 'b653438f77fb21f71a5e178dcd3095bed10fde01db9a9a428397132283856ef2'
    'de'
  end

  language 'en-GB' do
    sha256 '49da832b384487ed3fffd1e94044875a33aea796c8c7d431562e41865a6e4606'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '07783bf489e18129d621032832f3206504e80f89df0013bca44eca3b059418f9'
    'en-US'
  end

  language 'fr' do
    sha256 '4afc2fe3b60ca8d1a01e189b7d4dfb1d77b07164ff4280716b8925419313260e'
    'fr'
  end

  language 'gl' do
    sha256 '9e0f3921cdb1148d57a81007c0337c1499a94fafe453a306b7c3837b6f20674a'
    'gl'
  end

  language 'it' do
    sha256 '00e0950a2c06a2ffd7c38435c3c623b83b53abec0523902f35e9fd3f543137ed'
    'it'
  end

  language 'ja' do
    sha256 'a9e0f711f33f1774b4e74e25f8c52e3d9bb5e82d7920944481862f6efbfb0dc1'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '8734a635a2267bb1c8fc061df340b60af268fcdb7986d6fa199d21d6a7b3f6ee'
    'nl'
  end

  language 'pl' do
    sha256 'cc169038fba47867098412dbc6b93c758ad7fdc781d6acb4016b363023d71ba0'
    'pl'
  end

  language 'pt' do
    sha256 '5825fdacd63c6e38452366238408de1f968ee5fb6e62a19d9e705c27fa03c43d'
    'pt-PT'
  end

  language 'ru' do
    sha256 '1f5606f074f91b668a5a9824b9b0eb21ad72201251216a5cba8f5e1c945c1082'
    'ru'
  end

  language 'uk' do
    sha256 'e06176bf94587c64e0c34d238b408081cc1d7687efa52d6fe5f57b4560019cb5'
    'uk'
  end

  language 'zh-TW' do
    sha256 '84f796e0305fb47d8261ea778cf1776d2d03ec3b03e5ae7cea12f3547d51756f'
    'zh-TW'
  end

  language 'zh' do
    sha256 'f396bfb6533383b0ff2ff97fcbf33d6cfc46c98191be59e99ce94dad17f82e62'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/#beta'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
