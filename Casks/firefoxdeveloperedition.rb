cask 'firefoxdeveloperedition' do
  version '57.0b1'

  language 'cs' do
    sha256 '2103a03c44a4d5c59262809a2046be54f4174d9143febe4a1b79a5d3892454f8'
    'cs'
  end

  language 'de' do
    sha256 '4baf178b005537566bb20328eef581472c74b0128f790f23e1fe6d75bf8611cf'
    'de'
  end

  language 'en', default: true do
    sha256 '743c757ec3737b423a94b5976b394a38a7509569a204c9dddabd40dc2fbda904'
    'en-US'
  end

  language 'ja' do
    sha256 '1504472c97b421fd49b8f8415ccd901efbc5f2239c44ff10944368fcf09388ee'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '8d721065296913b00812dfc76ae43122f948994c6e5a6ddcfd70abb2f2c009a8'
    'ru'
  end

  language 'uk' do
    sha256 '4fbba785c0a4225b80ff8af3cd85ff0e2aa44d00c36119e7be25827e442471f0'
    'uk'
  end

  language 'zh-TW' do
    sha256 '9a2929ccd5f7640cf95673df0704e7a637e00cb83279d7f4350c37820d370c65'
    'zh-TW'
  end

  language 'zh' do
    sha256 'bd3cf44ca0680b5bb060aa5c8db31900c4ac96e646c81c03a1b0f50da896ef4d'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: 'f4d84144b72ab0ae3bafd1bb92039bd2f2c338091a6c98d0bed1ed50fa84bc1b'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
