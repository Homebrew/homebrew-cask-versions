cask 'firefox-beta' do
  version '54.0b2'

  language 'de' do
    sha256 '9d720833dc9d1242d77a4c0dd1fd61bc826783636a23405d6b30c18bfb159982'
    'de'
  end

  language 'en-GB' do
    sha256 '2d81bd5d0544b2c3ee710e7e056f87b50ed7f469903b552e14138802dae930dd'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd97a5aba859fb1c2a2407a1c7bf2725bcbb3068bec0721155928e039cae168d6'
    'en-US'
  end

  language 'fr' do
    sha256 '6e5e06ab645fbdb61a8c556038235e01420b4b2f24480e3f7214c6de9f070246'
    'fr'
  end

  language 'gl' do
    sha256 '63a6074c88a4bc2a6c874ae4a6c0c7ebcaa654106f90640ae0b57763c3bf6af9'
    'gl'
  end

  language 'it' do
    sha256 '788b67d2aa573445457e4e5c2b8a823026326aaa057493435f16ddf014060dc7'
    'it'
  end

  language 'ja' do
    sha256 'cd8eeda96b0edf5abcfe081df6272ebe8488c237dd26d61cf5f096d456d20c73'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '40c46f36f89df992938dd2da90e35ee40759d50ed29e558bac5f7c7bd1b6a2dc'
    'nl'
  end

  language 'pl' do
    sha256 '97693da36ef3b848ff80d98e760d5244dea954edff0121e98e90ef3476213c40'
    'pl'
  end

  language 'pt' do
    sha256 'a7d02ea5bb134e960e56ec326d2d6cdfb15abc54bced065f1836722ae021a466'
    'pt-PT'
  end

  language 'ru' do
    sha256 'b4545923a0625a26cab1a3d20e35c87b5c1478d2e402fe1f276d64c09be17f88'
    'ru'
  end

  language 'uk' do
    sha256 '9376cd7a0df730537e15db057683caf205911401bf6f3befba46f9cf9bd6a6b8'
    'uk'
  end

  language 'zh-TW' do
    sha256 '6ebc5152ddacd56c4bcc4a6793bf2bfda1c1e1072bd15e0cd7bd8693213a16bb'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2a141666d4ab2692e82e3e6b0ec6a07628b4063af4f05183c52e40e5b2655fda'
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
