cask 'ableton-live-beta' do
  version '9.6.2b4'

  if Hardware::CPU.is_32_bit?
    sha256 '5d79a1e91efe0361559b6afaf6fefd4658e1f20625a50266e4a12798f62697c8'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_beta_#{version.no_dots}_32.dmg"
  else
    sha256 'e73eb0559f240248776015ca90d72127466655284aae29ded94dab639d0b7319'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_beta_#{version.no_dots}_64.dmg"
  end

  name 'Ableton Live Beta'
  homepage 'https://ableton.com/en/live'
  license :commercial

  app "Ableton Live #{version.major_minor} Beta.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end
