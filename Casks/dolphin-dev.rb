cask 'dolphin-dev' do
  version '5.0-5308'
  sha256 'c482ff7d3da8f341550d6472cc06a1a237db887aef3afe0e87b47fd57e918fee'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  name 'dolphin-dev'
  homepage 'https://dolphin-emu.org/'

  app 'Dolphin.app'
end
