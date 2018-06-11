cask 'ableton-live-standard9' do
  version '9.7.6'
  sha256 'd6fda952da53bb2c0eb69a6c0653fd0396bcbe81f5ee239da8ee2e10904c07fa'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  name 'Ableton Live 9 Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
