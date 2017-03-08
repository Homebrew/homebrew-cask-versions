cask 'firefox-esr' do
  version '52.0'

  language 'de' do
    sha256 '59f48ff5b50e946b00adf11363218f577fceb9fc00bc9a4ebb4b3c186c467dfa'
    'de'
  end

  language 'en-GB' do
    sha256 '7e4953a0ee7fe1e7c14af3872e88a68815393900c82e667636af907e344cea78'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd07eae2f89aabba2b8d3e4f475d83b928156cd7bb6cfdc5169016df16b705c78'
    'en-US'
  end

  language 'fr' do
    sha256 '60f83c9dc3dee037dac7cc28e22e2ab0b5a40d08209237d783f737038a1ab7f0'
    'fr'
  end

  language 'gl' do
    sha256 '6be1d4bd3d8328b3f48749243eff23705b4e4d7a4af73b036bf3978ea5ec46b1'
    'gl'
  end

  language 'it' do
    sha256 '58d837b5967224cf6e0f5d75c162877a8504ba0b12ab9ecf53d473399a806b2a'
    'it'
  end

  language 'ja' do
    sha256 '9369d75b9c1203fbd37642e912bddf6f39f6ede96eb02ec4e8e4f66453eb47d0'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'cd23a77fc5f8ea6dfaabd0d9350fafae746a574f190d81f8415f748260973f84'
    'nl'
  end

  language 'pl' do
    sha256 'ea0ed0de7a4a4675f24b9f66dca94a970a32912957e84a300f153d97f2303e9d'
    'pl'
  end

  language 'pt' do
    sha256 'fa1998d6092d72a0d27493fe3471c0caf8d0b6d8d15820271e532c336e647ea6'
    'pt-PT'
  end

  language 'ru' do
    sha256 '1a7ccf116a8048f8a528bb7fc52b3a6f3514cb69153238a9fa01bdae950cf700'
    'ru'
  end

  language 'uk' do
    sha256 'bd27502ad03491ce60d1e7cfd2f6309676232152d8fb2bd2466803c1f28c6aee'
    'uk'
  end

  language 'zh-TW' do
    sha256 'a73b8477569d2c2e87bd30bedb26e34cbba64f320d0bc67b978bd1e02e7263b2'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ebf6565bfee372b5d37e6808d0278f311779cddd084db217347e132dcb8ccc35'
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
