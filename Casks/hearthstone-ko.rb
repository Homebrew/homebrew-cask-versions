cask :v1 => 'hearthstone-ko' do
  version :latest
  sha256 :no_check

  url 'http://dist.blizzard.com/downloads/hs-installers/a6029a1d625c79252defff3914fb6e67/retail.1/Hearthstone-Setup-koKR.zip'
  homepage 'http://kr.battle.net/hearthstone/ko/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'Hearthstone-Setup-koKR.app'
end
