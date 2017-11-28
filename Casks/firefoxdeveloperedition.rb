cask 'firefoxdeveloperedition' do
  version '58.0b7'

  language 'cs' do
    sha256 'adf6c02447e5961d9a689ff7190d70bebe0b424b3ee49916606f078ca6e2256f'
    'cs'
  end

  language 'de' do
    sha256 '2d28977006bc504fa47dd71030e4890d31e7559f6d4351c47bde95bb131c46ef'
    'de'
  end

  language 'en', default: true do
    sha256 '68d9cb01acf9d63655ce5349b6309603174c1d433af11d30ca6e043e4c46a09b'
    'en-US'
  end

  language 'fr' do
    sha256 '340c0b1187dff14c4e99650d53db068a79c82e4c22fd756720349b97cc97ee59'
    'fr'
  end

  language 'ja' do
    sha256 'f96b4df2fefb537c32d1907e6bf4e9b4faff264506998331370215c1004af3be'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '6125f0673d4924259b2fc2e7bdc79467e3eeb02eee4c112e381b25e5fc1d75d4'
    'ru'
  end

  language 'uk' do
    sha256 '4d9f8cdb9fd3f251b3dd9d79274555277490b1ceed5a748ffe65aff4c235996c'
    'uk'
  end

  language 'zh-TW' do
    sha256 '2f0b0fda8867f9339d25d5bf5e51923b2f955e9514254388fa7b39fdf7316274'
    'zh-TW'
  end

  language 'zh' do
    sha256 'cee25b485f531ccb8798d9c120c1bb3c6b935407bf30e68612ab9944b2d7585a'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: '7c4c3d03b98d4d503aaea0160206efe701b8fea5dcdd59f872caa02be9295373'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
