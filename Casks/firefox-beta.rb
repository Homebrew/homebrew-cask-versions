cask 'firefox-beta' do
  version '52.0b6'

  language 'de' do
    sha256 'b131f9494da128c5c3e5b5c65ce2707fbdb258a64c716437652d4830337e9b75'
    'de'
  end

  language 'en-GB' do
    sha256 'efcd5872d3e482b0effec805911b394622cd28984bb65a11885f185b1c971b1e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'ac3f47d96747eceab421d8c2ee41782d3e41d43cc4aa95f95bff98444984c916'
    'en-US'
  end

  language 'fr' do
    sha256 'c19454a5236a924422666e2a35df5325b8e75c6b3a9368855a1e79aa7e4db9e0'
    'fr'
  end

  language 'gl' do
    sha256 '648c0bd686d861ece121df73478f0db42c5caa669717acaea0bd45af8fe1c842'
    'gl'
  end

  language 'it' do
    sha256 '9b1fde8d216c5a1d2c72729d4194aa02207566a1bc8f7938745f3068696ad008'
    'it'
  end

  language 'ja' do
    sha256 'e983461693e26166c81ba991f97995764001303a68a7d43d95c3960851433fa7'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'ae82170cfffd018cacecba3e99f05d22f861070e5b7b5165450d0f942f8c6647'
    'nl'
  end

  language 'pl' do
    sha256 '7b8ccfd6d381133630e73235b6de5060dc8c9c08033b6bd141b2df518e8b8220'
    'pl'
  end

  language 'pt' do
    sha256 'faae4da91d2b45dde2f15d1a1954091d3a7fb4accd623d3509365b2f317b7d75'
    'pt-PT'
  end

  language 'ru' do
    sha256 'f615acd685515dfa572a643c1c8e37f155c374a6fa2fd5e5890bf6f84e6fbb3d'
    'ru'
  end

  language 'uk' do
    sha256 'c87c04022fcfe06509c0572f61094019d39fde7b4e6efbea4a199397aa2594b8'
    'uk'
  end

  language 'zh-TW' do
    sha256 '3ac94d9edc51cb2e519fe03c2d034717b2364919dae8be870043429f1b4fbc4b'
    'zh-TW'
  end

  language 'zh' do
    sha256 'da4ad721f85c6549afcf2f44d6be0a8c29fd7ad483132c5395206417abf1172a'
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
