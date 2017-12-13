cask 'firefox-esr' do
  version '52.5.2'

  language 'cs' do
    sha256 '20424255ecfd9fb38c416b9c2061783b9999150433c4b220a255e156003d2af1'
    'cs'
  end

  language 'de' do
    sha256 '84e7e2325f371a9105b4388205482dcdd7fecd78c241301ee4c88a57d59c34a5'
    'de'
  end

  language 'en-GB' do
    sha256 'c9ef105c040ce8564b7e7ce3d6d21b978684ae32a5d536c46aa01de49f92a02e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'a3089c7c3bcf3afcff978d68b3a48992c650e4e621f62aef40078b2a33bd13cf'
    'en-US'
  end

  language 'fr' do
    sha256 '049e832cd456d68a40a4a807096a62dbe531fef56e63dc390550b0e3a897a027'
    'fr'
  end

  language 'gl' do
    sha256 '2943109fdd615f904642ac6c69666d8f10bbfde65ce0a1020646b7ef48a11629'
    'gl'
  end

  language 'it' do
    sha256 '398aff3937f1821fee9920e54ffa919fef12bc9518816b331c16c08337f9fa33'
    'it'
  end

  language 'ja' do
    sha256 '9df8af58b52924f757719b6ceee6059c2d97e8b68977133ad4ac4f9824416c30'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'b28d6f30cc450dfbc16308fd494e689eaaee094562e037c6b226ac159216c041'
    'nl'
  end

  language 'pl' do
    sha256 '700ea632de03c90c5aaf99a6001b4bc106a115ca1620061befba1daebfc3f28d'
    'pl'
  end

  language 'pt' do
    sha256 '06a77b762dc0b3ff280db3d274112d9e052aad6185236d18b21a6ee6e075af8b'
    'pt-PT'
  end

  language 'ru' do
    sha256 'ce224d65f27c00080e098c838f11af9e6460ee2e26aa195061d555343f87ebce'
    'ru'
  end

  language 'uk' do
    sha256 'ea4dbabe7f0a1bd0882ea4c57caf5f3113398f01eadbf029b78888d9d4003499'
    'uk'
  end

  language 'zh-TW' do
    sha256 '7419cdac8e931bdfa6d5e8defb4233c2b13073799da9f4a4626d0b0bd8e05e3f'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd04e503c2c8e65a26aa650494892abdd879ee19443201bcbd3bee41815d07b70'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  app 'Firefox.app'

  zap trash: [
               '~/Library/Application Support/Firefox',
               '~/Library/Caches/Firefox',
             ]
end
