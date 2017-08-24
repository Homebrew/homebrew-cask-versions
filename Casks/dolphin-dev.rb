cask 'dolphin-dev' do
  version '5.0-5308'
  sha256 'c482ff7d3da8f341550d6472cc06a1a237db887aef3afe0e87b47fd57e918fee'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  appcast 'https://github.com/dolphin-emu/dolphin/releases.atom',
          checkpoint: 'c2e88f5174e911f4af1922d58ddb533154428d83333699a256c7aac0c1eb91d1'
  name 'dolphin-dev'
  homepage 'https://dolphin-emu.org/'

  conflicts_with cask: 'dolphin'

  app 'Dolphin.app'
end
