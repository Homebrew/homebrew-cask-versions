cask "openemu-experimental" do
  version "2.2.1"
  sha256 "8977f563868a312b72298dc7cd2b8767c21b440bae598d16a7d3916a98d870e8"

  # github.com/OpenEmu/OpenEmu/ was verified as official when first introduced to the cask
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip"
  appcast "https://github.com/OpenEmu/OpenEmu/releases.atom"
  name "OpenEmu"
  homepage "https://openemu.org/"

  depends_on macos: ">= :el_capitan"

  app "OpenEmu.app"

  zap trash: [
    "~/Library/Application Support/OpenEmu",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.openemu.openemu.sfl*",
    "~/Library/Application Support/org.openemu.OEXPCCAgent.Agents",
    "~/Library/Caches/OpenEmu",
    "~/Library/Caches/org.openemu.OpenEmu",
    "~/Library/Cookies/org.openemu.OpenEmu.binarycookies",
    "~/Library/Preferences/org.openemu.Atari800.plist",
    "~/Library/Preferences/org.openemu.Bliss.plist",
    "~/Library/Preferences/org.openemu.CrabEmu.plist",
    "~/Library/Preferences/org.openemu.desmume.plist",
    "~/Library/Preferences/org.openemu.FCEU.plist",
    "~/Library/Preferences/org.openemu.Gambatte.plist",
    "~/Library/Preferences/org.openemu.GenesisPlus.plist",
    "~/Library/Preferences/org.openemu.Higan.plist",
    "~/Library/Preferences/org.openemu.Mednafen.plist",
    "~/Library/Preferences/org.openemu.Mupen64Plus.plist",
    "~/Library/Preferences/org.openemu.NeoPop.plist",
    "~/Library/Preferences/org.openemu.Nestopia.plist",
    "~/Library/Preferences/org.openemu.O2EM.plist",
    "~/Library/Preferences/org.openemu.OpenEmu.plist",
    "~/Library/Preferences/org.openemu.Picodrive.plist",
    "~/Library/Preferences/org.openemu.PPSSPP.plist",
    "~/Library/Preferences/org.openemu.ProSystem.plist",
    "~/Library/Preferences/org.openemu.SNES9x.plist",
    "~/Library/Preferences/org.openemu.Stella.plist",
    "~/Library/Preferences/org.openemu.TwoMbit.plist",
    "~/Library/Preferences/org.openemu.VecXGL.plist",
    "~/Library/Preferences/org.openemu.VisualBoyAdvance.plist",
    "~/Library/Preferences/org.openemu.mGBA.plist",
    "~/Library/Saved Application State/org.openemu.OpenEmu.savedState",
  ]
end
