cask 'firefoxdeveloperedition' do
  version '58.0b4'

  language 'cs' do
    sha256 '04355dfd72a325fc286cb42db64c6242eb2f1fdbc510d66995bbdd6303ab867e'
    'cs'
  end

  language 'de' do
    sha256 'bea959cbca077cf6281fb2961f399d49304ebaa48c42d6073b683addf32c5d33'
    'de'
  end

  language 'en', default: true do
    sha256 '05f05d523ff7f8417d3e89782be45b515f6e892519e7a56844ed8638e86611d1'
    'en-US'
  end

  language 'ja' do
    sha256 '3b3dc7bbba08281c6c375afd6f04854a38ff6a23bb50d2023c76cdb7857be335'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 'f00dbe87d2d9951f466aa92c12bcb83cb5784391bfd21c668da49e4b599ff6ca'
    'ru'
  end

  language 'uk' do
    sha256 'e8657345d04a9eb8c0e9179d67df83b91ce1d5cf06b78ec2f38586b4dec5cea5'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1c8c1489169094cb8437ca1e9a6e3fbb06396df06b843908f58ec9cc84718142'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ca6bca5c21736e5dd276b3415d57173ea8f1384256c2bc756abdb7936bcc609f'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: '7320780bf03b056ab149d6868cd3ef108a7eb2b0afe1a2ac365b61c05ec7a676'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
