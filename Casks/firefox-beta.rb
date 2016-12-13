cask 'firefox-beta' do
  version '51.0b7'

  language 'de' do
    sha256 '14ac0db570ab3e130ebf1fba16faa55494195ef50b2a61704ffbbf6037c12c0f'
    'de'
  end

  language 'en-GB' do
    sha256 'c17c05e3b3fe95e3eaad3642b8a599f5dcf28e1b68fbe6e255f1e73f7036395c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'bf87c8caafd39135888294bb31ddac12e4c1403991e762fdbb5af93f322f805f'
    'en-US'
  end

  language 'fr' do
    sha256 '891df6e5e9a4bd28fe27879c3f2c990c704a406fdb1c783a052840f41d4035c7'
    'fr'
  end

  language 'gl' do
    sha256 'cd14d0b957eee7e8601856b6b75403477b622cd2e3a4977285fdc1e39a329211'
    'gl'
  end

  language 'it' do
    sha256 'ce0c95cd0adffb3fe3e283c4920c3c3ed02b53f4a0651b642168a8fcb6be6c68'
    'it'
  end

  language 'ja' do
    sha256 '8edba9c498911ebab8f3931834e0a11fba14274614dc7e75e91a304ebcfa72e5'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c35afc8a7eece480a4cc0d1995b5e465b21ad716901a4dee6c002cdfb90aab60'
    'nl'
  end

  language 'pl' do
    sha256 '688220db45d6ea9ad282ea595f6426ee2472de42c81c57e1d29f17ae1d0a23c6'
    'pl'
  end

  language 'pt' do
    sha256 '991926dd3612dac3fb1df1638fc0f8cde405b0d1b559ea12c3b777dfbf434937'
    'pt-PT'
  end

  language 'ru' do
    sha256 '926b9cb50d97a1f4f80afb9f224fd565bb6abc71d6214edd8199d584e2f72cfd'
    'ru'
  end

  language 'uk' do
    sha256 '54d4b962260f621ba002d131c25b55fab6af7bd67a59013e469278ef63e83d1d'
    'uk'
  end

  language 'zh-TW' do
    sha256 'e1f8618fd5c46dabc05b779f26d1c6b1ea8e15ce9a2f171d8f057ebb9211800a'
    'zh-TW'
  end

  language 'zh' do
    sha256 'c185b48798239482f842085d21b90c07fe45d337c9450d752b158068bd23f4ec'
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
