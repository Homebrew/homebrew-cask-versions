cask 'ableton-live-suite' do
  version '9.6.1'
  sha256 '2951e547feae13c9f415c39c6045ebf0f2edf1f278bdf7bc40fd1d8a769e184b'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  name 'Ableton Live Suite'
  homepage 'https://ableton.com/en/live'
  license :commercial

  app "Ableton Live #{version[0]} Suite.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end
