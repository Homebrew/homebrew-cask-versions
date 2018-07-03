cask 'ableton-live-suite9' do
  version '9.7.6'
  sha256 '60a0f9b035176a6a276b0d21315e0584a39adeea62d621ed074d9e4efe2f8cda'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live 9 Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Suite.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
