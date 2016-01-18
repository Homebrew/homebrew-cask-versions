cask 'hearthstone-en-gb' do
  version :latest
  sha256 :no_check

  url 'https://eu.battle.net/download/getInstaller?os=mac&installer=Hearthstone-Setup-enGB.zip'
  name 'Hearthstone'
  homepage 'http://eu.battle.net/hearthstone/en/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer manual: 'Hearthstone-Setup-enGB.app'
end
