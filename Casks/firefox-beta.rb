cask 'firefox-beta' do
  version '52.0b2'

  language 'de' do
    sha256 'db34cf04016a7455caa067020891697f3d40acaa2fd7d4b2d17a7f1c16731992'
    'de'
  end

  language 'en-GB' do
    sha256 '50f7a186040f429d21efaa1cefd82da48f7b1db4a2eb1fa3314e8cf321cb34f1'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6016b32e70ce773a114cce714ece369f88bb6db77a3a076a846b7121037ae42a'
    'en-US'
  end

  language 'fr' do
    sha256 'cab590d71a53eb9c1f1c0ee434d625bcf28e96f013dcd91ecd9bad5bcd65e8bb'
    'fr'
  end

  language 'gl' do
    sha256 '28c1c06a06179c8efd304a16a67c7e4888251071299c7e76eb82b17c7b768ba1'
    'gl'
  end

  language 'it' do
    sha256 'fc06f094ba794286e4816a946f710686e1b3f53c0809235b28a80015208f07f5'
    'it'
  end

  language 'ja' do
    sha256 '430a0a6a9630cd54747bed66d6b7dbe2b114857765cc94ae67c22d0229a3fc8b'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '7d360b69077c7044c25dd754092e399463e63124ac95ad2b123e2ab73179363a'
    'nl'
  end

  language 'pl' do
    sha256 '8eefd7ec301718d6da71f74f9fb4284de03548da875da5ae8e443283f05a0b08'
    'pl'
  end

  language 'pt' do
    sha256 '3ebf0329da174946fa25321735d6361dab7c436051cc67a93a3abc69b57cf60b'
    'pt-PT'
  end

  language 'ru' do
    sha256 '1a41f7783b2a2493836bb87c369f8d8e22b4cf1e7262b976fe730b9e5afdd32e'
    'ru'
  end

  language 'uk' do
    sha256 'f553d0c42bc3cbd60e908019637b6fd04fc14f142a37b4079b6723bfe4e344fc'
    'uk'
  end

  language 'zh-TW' do
    sha256 'edc01cbb10386c713902e54e59a713e67449f8a70c797a0edf2ef081fa31b5e6'
    'zh-TW'
  end

  language 'zh' do
    sha256 '1e014b72aff962695ef7a49c394801ab1de91081dc944e82bd3e097a2fc8e9b6'
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
