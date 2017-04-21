cask 'firefox-beta' do
  version '54.0b1'

  language 'de' do
    sha256 '92579323553f5b6ec99f70e6ad6102b1eaeacb892cc638d4c315abf4ec41e9b0'
    'de'
  end

  language 'en-GB' do
    sha256 '4a30b2e384be6203e1db018aae5eea1c476ebaf224bcde982fe957eb791700de'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'a36ea6373305e9dbc030ff56fc26715287fa3b01e3c8c8bd34fd20b0fdb7b1b3'
    'en-US'
  end

  language 'fr' do
    sha256 'ea760aad46322c3957407517d51ffa2a7a322f2ff1e73c6fea900e11bbce3d30'
    'fr'
  end

  language 'gl' do
    sha256 '011bf2358e11e8b2252b71497b6fa102021c693fbb65a875ac9134f7e4b1ed88'
    'gl'
  end

  language 'it' do
    sha256 '600b67eff5655c20e9a5141583c246034154fde2670ce912aad9701bb087c6c8'
    'it'
  end

  language 'ja' do
    sha256 '7f52e7f7a1b532a554196ab4e9f22a260c9ce2587bbe4d5684329738ad685f97'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'b8c8da2d50b381e998703ac35fe2a47e29b5fb299e8b208aba9042682bb39bf1'
    'nl'
  end

  language 'pl' do
    sha256 '2588026beab6e7c90aab9b4a86ca0b2005e86bfd66a3acca6e947387f804001f'
    'pl'
  end

  language 'pt' do
    sha256 'c3a5010a0d24389a31f81a332cddddc1ea3b9929629129df8ed9f84f93eee4a0'
    'pt-PT'
  end

  language 'ru' do
    sha256 '677c17497d1426b3720e4c275e424ce1b4281cf9b6b33ec35908893c65e29b27'
    'ru'
  end

  language 'uk' do
    sha256 '053724fadd5896f7621bcee91d79a6fe98ef6d554b22ecfda62c3ef39ac9815f'
    'uk'
  end

  language 'zh-TW' do
    sha256 'acc0dc95cc9e5f0e0705352847db70274d103307d863c60445a0ff689e418a12'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ec0cee48a4fb27c52d4d2bd584dcc50284d4e407977d0b0ef38f8f20b13d0a90'
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
