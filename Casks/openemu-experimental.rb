cask 'openemu-experimental' do
  version '2.0.1'
  sha256 'ccaa4027bfe80a9ecc819018b9b96439d3ddbccc37f1c6a00132cf839a93a663'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip"
  appcast 'https://github.com/OpenEmu/OpenEmu/releases.atom',
          :checkpoint => '5fdc3cf529fcab93c900732f8fd3b09c909a4a6e144f517c97343c27c907e24d'
  name 'OpenEmu'
  homepage 'http://openemu.org/'
  license :oss

  depends_on :macos => '>= :el_capitan'

  app 'OpenEmu.app'

  zap :delete => [
                  '~/Library/Application Support/OpenEmu',
                  '~/Library/Application Support/org.openemu.OEXPCCAgent.Agents',
                  '~/Library/Caches/org.openemu.OpenEmu',
                  '~/Library/Preferences/org.openemu.Atari800.plist',
                  '~/Library/Preferences/org.openemu.Bliss.plist',
                  '~/Library/Preferences/org.openemu.CrabEmu.plist',
                  '~/Library/Preferences/org.openemu.desmume.plist',
                  '~/Library/Preferences/org.openemu.FCEU.plist',
                  '~/Library/Preferences/org.openemu.Gambatte.plist',
                  '~/Library/Preferences/org.openemu.GenesisPlus.plist',
                  '~/Library/Preferences/org.openemu.Higan.plist',
                  '~/Library/Preferences/org.openemu.Mednafen.plist',
                  '~/Library/Preferences/org.openemu.Mupen64Plus.plist',
                  '~/Library/Preferences/org.openemu.NeoPop.plist',
                  '~/Library/Preferences/org.openemu.Nestopia.plist',
                  '~/Library/Preferences/org.openemu.O2EM.plist',
                  '~/Library/Preferences/org.openemu.OpenEmu.plist',
                  '~/Library/Preferences/org.openemu.Picodrive.plist',
                  '~/Library/Preferences/org.openemu.PPSSPP.plist',
                  '~/Library/Preferences/org.openemu.ProSystem.plist',
                  '~/Library/Preferences/org.openemu.SNES9x.plist',
                  '~/Library/Preferences/org.openemu.Stella.plist',
                  '~/Library/Preferences/org.openemu.TwoMbit.plist',
                  '~/Library/Preferences/org.openemu.VecXGL.plist',
                  '~/Library/Preferences/org.openemu.VisualBoyAdvance.plist',
                  '~/Library/Saved Application State/org.openemu.OpenEmu.savedState'
                 ]
end
