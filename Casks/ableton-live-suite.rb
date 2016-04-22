cask 'ableton-live-suite' do
  version '9.6.1'

  if Hardware::CPU.is_32_bit?
    sha256 '83c5615ba0a2f9155e929c65c258979d30aff1f2208d7f737d0b1e5aa929ea92'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_32.dmg"
  else
    sha256 '2951e547feae13c9f415c39c6045ebf0f2edf1f278bdf7bc40fd1d8a769e184b'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  end

  name 'Ableton Live Suite'
  homepage 'https://ableton.com/en/live'
  license :commercial

  app "Ableton Live #{version[0]} Suite.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end
