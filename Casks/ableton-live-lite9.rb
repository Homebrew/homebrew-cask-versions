cask 'ableton-live-lite9' do
  version '9.7.6'
  sha256 'f40ea7481318747ffcce9a7e79fdad38453664f53816c98390a94eb3e57b3ed2'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'

  app "Ableton Live #{version.major} Lite.app"
end
