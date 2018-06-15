cask 'ableton-live-intro9' do
  version '9.7.6'
  sha256 'dcb419ff6ddf0e7728f0e645310730b79892d79a8d1943dc95c871e046c7f028'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live 9 Intro'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Intro.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
