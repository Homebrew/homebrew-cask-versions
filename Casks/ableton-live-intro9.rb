cask 'ableton-live-intro9' do
  version '9.7.7'
  sha256 'a475d530129e513a17e4a328ff60c0d3b6371fb9f190a8b6b0b178c1a4bf723b'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live 9 Intro'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Intro.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
