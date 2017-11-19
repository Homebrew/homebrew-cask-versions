cask 'firefox-esr' do
  version '52.4.1'

  language 'cs' do
    sha256 '8dcbeacbf34b7b80f36e500ee0b5cd4e5c04bcb62886e0bc633df95e999cdcf9'
    'cs'
  end

  language 'de' do
    sha256 'c9bf7848a8ada72253bbfab87940eb79781a7c697249cd16f7be624fd64be165'
    'de'
  end

  language 'en-GB' do
    sha256 'a0fbe9cb79566e197bf72ce0bce3c344ca75a0e7df08baa42ea5967de04fe4b1'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'edcb35dc345e9eb968397d8d9c9a8ebb15f387f33e0c3e09a840e1f8bec7e52a'
    'en-US'
  end

  language 'fr' do
    sha256 '3098a882abbf264f2fa34172d4baa8821f85995f215c7f6dd153945c8a0b5ca1'
    'fr'
  end

  language 'gl' do
    sha256 '7c33384cc93e9392cbac3ed2336c31f6a1e063ccb35e64143ca981841acd4239'
    'gl'
  end

  language 'it' do
    sha256 '833a717369467dd890b11860433ce76a7a5956294edcb626c811f91e5d56ea6a'
    'it'
  end

  language 'ja' do
    sha256 '57b51aa48e18606452be6ac2767f2408fbb1d9f01344fdb02af5258a6a8711db'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c3927cb413dce11eca48f7c31e73f0023356be4da4bdc96b0526fdd5944b5a6f'
    'nl'
  end

  language 'pl' do
    sha256 '009df23252472f3158f2fde3c8f021f30e297283ae3d3817758fd116855b1155'
    'pl'
  end

  language 'pt' do
    sha256 '7628e26b766d9e602f37b6744a353639a32d48b0167392dd359b89853b75c9bf'
    'pt-PT'
  end

  language 'ru' do
    sha256 'ea465cc024ddc32526e7d4adb3fc4dc6957796052ee30844adbc3e7d68d3ec7e'
    'ru'
  end

  language 'uk' do
    sha256 '767782f61049e09ab9a32bca3459380391eb08b13aff31c7159fc3ea905ddc78'
    'uk'
  end

  language 'zh-TW' do
    sha256 'a420bf4dd4ed62369fc08790e8e213f54dfa49820dd659e61a98bf600f1ee5fc'
    'zh-TW'
  end

  language 'zh' do
    sha256 '4bf343a1249ed740c2a278813d3e31a4047230ed2c088f0531383495deda8de9'
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
