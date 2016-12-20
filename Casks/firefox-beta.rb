cask 'firefox-beta' do
  version '51.0b9'

  language 'de' do
    sha256 '6c78a9a9fb5a10f3dfc3e1f1aae7d4ea85486d6b63d7f6002389984880a326a1'
    'de'
  end

  language 'en-GB' do
    sha256 'a997e7ef97a0a93053394e6d031544240356f7b5636dffa383c8342129daef29'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6450e9354b7aedb3b845a8f6b81f91b91d0828540a01f9b75e9f0c53d443337f'
    'en-US'
  end

  language 'fr' do
    sha256 '2040f18479d7c47e0f7a31b94fc70c75031d36334bc495a78b892fde4cc9d399'
    'fr'
  end

  language 'gl' do
    sha256 '74c848d78416ef15989a3d3231ebfd3b7150b4a5957806055ecd7ab28c384daa'
    'gl'
  end

  language 'it' do
    sha256 '05f5ab9428d50f6e0402d47518bb68f7de9b8e284fd9172fe1717c480f31ab6d'
    'it'
  end

  language 'ja' do
    sha256 'fe56eb790b6f807bb882668d053add4686dcfa6c87f00f9ff9abeec8f2291ba5'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd64bd1234bddac3f4c021e7d4291f5f3eb3c5c7a143c5d99bcdd1180e15c8cb3'
    'nl'
  end

  language 'pl' do
    sha256 'd89487f15e11d5149f9cdeffbd9ef78438b1db4f88b6dfea734b20df290dab6e'
    'pl'
  end

  language 'pt' do
    sha256 '0993b9c449fd77a8d106a090dfb609e0d247475ecdadcb161aea60b983334489'
    'pt-PT'
  end

  language 'ru' do
    sha256 'bf796bf3a7c8701a965c2df8992fdb3a82e228553e2d4f63946363c536e534dc'
    'ru'
  end

  language 'uk' do
    sha256 'e6c62b7e7086f37beac57c05777ae9fd1f6c071b3c3ee3604de5137b547ce217'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ec3a01be281a7b24dfe0bc9f2f32152a69c1e9f50ebb612c03d14ee841a54fde'
    'zh-TW'
  end

  language 'zh' do
    sha256 '186360c47d340ca28e96adcf463edec2dd3315167c331b8bacec4120c5cbeefa'
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
