cask 'ableton-live-standard9' do
  version '9.7.7'
  sha256 'b78438cf84a25c9fd1a797103a86f94f563cae36170f3513ce8e0272b49fb3e8'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live 9 Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
