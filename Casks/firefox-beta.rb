cask 'firefox-beta' do
  version '51.0b6'

  language 'de' do
    sha256 '176496655affd7126cd47a09d4bad8e3916465caac57742a9cc11c23dd30e857'
    'de'
  end

  language 'en-GB' do
    sha256 'dddc2c8a5d49554f8b610c528926f61b3df794c0f0a269b1e3b39c2c37860c69'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'a525f29927a2fbe2af7f342f67a4ed1dd69543133a6016a7163bc68513ffc916'
    'en-US'
  end

  language 'fr' do
    sha256 '691f1dacadb63700ee70123dfbbccbae8de8c1ec4c68dca572ebd2a4129b8a1d'
    'fr'
  end

  language 'gl' do
    sha256 '2cef98f3e26d2626118e31db99840ff6d91958bd93ac5ad4bece482cbe6e13d9'
    'gl'
  end

  language 'it' do
    sha256 '3dd016a4dff0f482398daac3f0a98704e143d350ad072674f71a0d275c314653'
    'it'
  end

  language 'ja' do
    sha256 'd275913ce16288f53ce8ec2e6deafc85bb11f5b7bc0b2c58a901567e7087b384'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'f2e6a41ec2e4ecec51a207f26f299fa8abc4a6d96f5857e792d30c0686ce3e89'
    'nl'
  end

  language 'pl' do
    sha256 '1fbda910e1a66c1fdb182f26db8f99f20a979d3b4bbee8520672de9bec5ab3cb'
    'pl'
  end

  language 'pt' do
    sha256 '78b8f460c91b486e9c40f7036ac39d6e7526dd0e2202784052b2697c0232a00e'
    'pt-PT'
  end

  language 'ru' do
    sha256 '382238d9fbcd5f8d1f58d36717cb37e36b48d43994b0226b07aff9477716d04c'
    'ru'
  end

  language 'uk' do
    sha256 'ca87c180aa748ab457d7d399732cdf3b36d91c15c8c11abae0905e50808b4eb2'
    'uk'
  end

  language 'zh-TW' do
    sha256 '6ecd757db3a5d0f12e39417ffd1d0488056a9a6469033bcf6a50cd0f0804f84a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '978ef39d7ddbedf0c5ba7fdb955d81cb3cafe7bee195127bbb3a7a13d662fcaa'
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
