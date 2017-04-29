cask 'firefox-beta' do
  version '54.0b3'

  language 'de' do
    sha256 '4f982c7dc8bd7a25c84dad423bb8ade04bff1b1216aa386b1d9be5bebdf246ce'
    'de'
  end

  language 'en-GB' do
    sha256 'b57677f545070b703333e36b7a11d620cfd12eb16411257169d5a93412a422c8'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'abd8daa519dc3d3493fc631d4d461b5a8d99a98c8b147744c3787e1b18ad4747'
    'en-US'
  end

  language 'fr' do
    sha256 '186e97b4f9d811d90abd54cfb66056fbcfe054f843fd3377394c5b5494d2588d'
    'fr'
  end

  language 'gl' do
    sha256 '092cbc7d1695b98f24e48202871178e8dcb6802ecf9123cffd7f888127f8623e'
    'gl'
  end

  language 'it' do
    sha256 'bca830fff4f9bc82320b7551ac992ac1ace9b79b8b0e754b3dfeb2e5585e9125'
    'it'
  end

  language 'ja' do
    sha256 '64bd9a4bddd50a020b8b46b4d9289131da4d408b68a64afed1fb914c891ae1d2'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '9eabfeba814f98a4b6f5e6341da804330d52d5f811db6b869c5d02cf3382e672'
    'nl'
  end

  language 'pl' do
    sha256 '653d1a411ddee513c4e4b0ab6fe96bcc8eaff3cb8ca7f0c6f89d34027dad7d08'
    'pl'
  end

  language 'pt' do
    sha256 '933431a0d045b32e5fe51453c590a4199dff9e02adf1e81a16f33819a757e01c'
    'pt-PT'
  end

  language 'ru' do
    sha256 '37702a902c6d38faa439c3186bbfa5a49c115bb5f7ea4c1ce231992520033447'
    'ru'
  end

  language 'uk' do
    sha256 '40b9807c34f0c8d251ee5fd6efd731b87b016c804ed90cb9f6fceb1a771e42fb'
    'uk'
  end

  language 'zh-TW' do
    sha256 '2efe1863fcef555a1ef8254d55e1543fe8d103731f2a1d827d974388a9776f10'
    'zh-TW'
  end

  language 'zh' do
    sha256 'a590834abe1890f8f5ff0bc21524917e05a8a46a054ea80b80463edfc5904fa6'
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
