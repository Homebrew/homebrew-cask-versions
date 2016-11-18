cask 'ableton-live-beta' do
  version '9.7.1b3'
  sha256 '8d5744c93b7d1f0346427a8bf945bdc7343b6f707eb4d9450365552557d54f80'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_beta_#{version.no_dots}_64.dmg"
  name 'Ableton Live Beta'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major_minor} Beta.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end
