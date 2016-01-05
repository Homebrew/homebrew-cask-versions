cask 'hearthstone-en-gb' do
  version :latest
  sha256 :no_check

  url 'http://eu.battle.net/download/getInstaller?os=mac&installer=Hearthstone-Setup-enGB.zip'
  homepage 'http://eu.battle.net/hearthstone/en/'
  license :unknown

  installer :manual => 'Hearthstone-Setup-enGB.app'
end
