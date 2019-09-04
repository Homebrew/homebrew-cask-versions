cask 'firefox-esr' do
  version '60.9.0'

  language 'cs' do
    sha256 'b2dae7c8a81100e6ae6388df82bb8fb11c300aedd0d8da93bd58ac6802090d76'
    'cs'
  end

  language 'de' do
    sha256 'd2fa71f9378189e396be854f0e66b0ad639ec068abc889dbc74f695841a71360'
    'de'
  end

  language 'en-GB' do
    sha256 '4bbdd5ea290f2de2979b2595cf0d2224d62d05058c4925f63ad2cfb90e52a284'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'a287051bc72af1d56d417ed30f7d4305f438071134bc087ca4faa84600c6403a'
    'en-US'
  end

  language 'fr' do
    sha256 '796f9d2f5be31c7813b6c083d322f10d3103ac75b3167613818267d8e972f416'
    'fr'
  end

  language 'gl' do
    sha256 '0047c5b356e6c7f22ac67d139c45e60c4a84554386f8f2e3ee17e3212a7a5496'
    'gl'
  end

  language 'it' do
    sha256 '52ec9991cb816b3a107fa49ce03a98a109ef0a0a51bf3ebe63ba48e024608569'
    'it'
  end

  language 'ja' do
    sha256 '068b238aeb0b5317e3551a136386362b90f9947efb40b502838b57fdda88dde7'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '74f52349994d25d5d61d7a8b44a4f0ac0c0d072daab7db459b5ccc72bac4f4a1'
    'nl'
  end

  language 'pl' do
    sha256 '68e294715c45249b7bc57aa6d70be52b04dd974f7b06d359bc91d8b7a851e7f7'
    'pl'
  end

  language 'pt' do
    sha256 '4ad45831503ac210de08ea976db4ae9c28d345232b1ffafd68b9715c2ea9e4fb'
    'pt-PT'
  end

  language 'ru' do
    sha256 '6b6979f89e02c766e632b7193485db6438248d706a1acfe61342e4a0ff783922'
    'ru'
  end

  language 'uk' do
    sha256 'db1f8591c469319e95ecfc622b283f70b6666cfd361b843d6ac4c7da52756a73'
    'uk'
  end

  language 'zh-TW' do
    sha256 '9cd7d0133aa9bf454c7f0acf582c1c34f255b84b9033442ec8f6ac25bc0283bd'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd9aaa48f5412453aac0e0365d7606f2209bbefc4780d1086c8fed24effb5d6cd'
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
