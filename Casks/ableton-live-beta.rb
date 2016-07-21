cask 'ableton-live-beta' do
  version '9.7b1'

  if Hardware::CPU.is_32_bit?
    sha256 '28c1eb2163ec58afffdac4d8419697ec290f69c17466c12ace45f576285d2efc'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_beta_#{version.no_dots}_32.dmg"
  else
    sha256 'b90394adbe5f90467f4a14bb966079ce4b4c1e897abb3b7224d41fd395de0e20'
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
