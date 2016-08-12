cask 'ableton-live-beta' do
  version '9.7b4'

  if Hardware::CPU.is_32_bit?
    sha256 '48dbe8d0648a62e5778d7a5551205cee91abd0cacc5e76ad8bc94a810b217683'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_beta_#{version.no_dots}_32.dmg"
  else
    sha256 '5bc6d02891df5702af956f29efab70223fd5ca92a3746b96d84bc1abd8cd8ac0'
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
