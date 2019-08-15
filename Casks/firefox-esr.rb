cask 'firefox-esr' do
  version '68.0.2'

  language 'cs' do
    sha256 'd6c6138c1ce9d5c49c6ea63e7b62256fff35b88d0c005a5343515666f7f6145e'
    'cs'
  end

  language 'de' do
    sha256 '49d83c321d08cd455bafc44addd179b032bc8539da8d91cc7085a230e72fbf8f'
    'de'
  end

  language 'en-GB' do
    sha256 'cd56721eaf39a0112bb868fdb1ea330dc0dc1a66b55be007eabb66fcb91f23cb'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c51d0c3f1a7a24c94701e96d96b6a3d86bf3981dc223c1136e8f59efc3263985'
    'en-US'
  end

  language 'fr' do
    sha256 '1a3ea1d23fabad49a24143fe0a2ebaf4594852bfe4ce3e8bc476cd3f9effbed0'
    'fr'
  end

  language 'gl' do
    sha256 '276ce103335398eb78c124d010ec44836c6a2d0c15c4eccfd4c7ac8cc26128fe'
    'gl'
  end

  language 'it' do
    sha256 '6c4d09f0dc033ce249c8038e3ed04bc4aaebe69fda4608ac72470666cf9ecd1c'
    'it'
  end

  language 'ja' do
    sha256 '4569b0eaefa770a4865719e00884231733803c0f3870c8d60e74778b763ffe92'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd8e9f22c13b6a12edd4bb0c2bfe3bde7d183b58a2bfc79caf614a0cd66e48ce9'
    'nl'
  end

  language 'pl' do
    sha256 '1f1a35b1831c0c7b1a5f0123aa3e543137fe470edf02ae53cb548316300f5a2e'
    'pl'
  end

  language 'pt' do
    sha256 '909cfa3db15ddd53cf98307a8f36eb65b0caa23cc8218567a54b8c455410e08d'
    'pt-PT'
  end

  language 'ru' do
    sha256 '8e9e073ecf3594eec2b4199e70f6a638db1386f7314d58782ab1e76a91cf213a'
    'ru'
  end

  language 'uk' do
    sha256 'aba13fe1a2db8aa31e0e30b599e989e706a72ccd77e94596b17d2696f59f3252'
    'uk'
  end

  language 'zh-TW' do
    sha256 '7f5332abbd404b1699a7b18e484770fd1fa3005e6cd87c8045d97fa12f24966e'
    'zh-TW'
  end

  language 'zh' do
    sha256 'dd22e221609e9309d309c847a38b16092a4a45e3868db36f47496e775ef9ac2b'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-esr-latest-ssl%26os=osx'
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  conflicts_with cask: [
                         'firefox',
                         'firefox-beta',
                       ]

  app 'Firefox.app'

  zap trash: [
               '~/Library/Application Support/Firefox',
               '~/Library/Caches/Firefox',
             ]
end
