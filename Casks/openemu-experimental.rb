cask 'openemu-experimental' do
  version '2.0.6.1'
  sha256 'dd958890665323fb966dda7c4533e20613a78e6eca08aba28efb3df6f86db313'

  # github.com/OpenEmu/OpenEmu was verified as official when first introduced to the cask
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip"
  appcast 'https://github.com/OpenEmu/OpenEmu/releases.atom'
  name 'OpenEmu'
  homepage 'http://openemu.org/'

  depends_on macos: '>= :el_capitan'

  app 'OpenEmu.app'

  zap trash: [
               '~/Library/Application Support/OpenEmu',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.openemu.openemu.sfl*',
               '~/Library/Application Support/org.openemu.OEXPCCAgent.Agents',
               '~/Library/Caches/org.openemu.OpenEmu',
               '~/Library/Cookies/org.openemu.OpenEmu.binarycookies',
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
               '~/Library/Preferences/org.openemu.mGBA.plist',
               '~/Library/Saved Application State/org.openemu.OpenEmu.savedState',
             ]
end
