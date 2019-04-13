cask 'mixxx2.1.x' do
  version '2.1.8'
  sha256 '778fe1b167484cf660ce92f469c241f6c730c78011fefef73e33e73b731a1fd9'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  appcast 'https://www.mixxx.org/download/'
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
