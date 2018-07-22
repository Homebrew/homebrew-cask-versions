cask 'ableton-live-lite9' do
  version '9.7.7'
  sha256 '792e80d33d0c704b10b31c672b2e897644696232009cee1f4bf28b3cfb1281e3'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
