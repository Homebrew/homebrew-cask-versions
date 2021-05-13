cask "openemu-experimental" do
  if MacOS.version <= :high_sierra
    version "2.0.9.1"
    sha256 "62c44e823fef65c583cbf5e6f84faa03618d713f45610f73bc23fb34cbf64762"
  else
    version "2.3.3"
    sha256 "8b91fecfb0fd58ffc03abca00d6df2c519c396b955072c6c209d53018f921cf7"
  end

  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip",
      verified: "github.com/OpenEmu/OpenEmu/"
  name "OpenEmu"
  desc "Retro video game emulation"
  homepage "https://openemu.org/"

  auto_updates true
  conflicts_with cask: "openemu"

  app "OpenEmu.app"

  zap trash: [
    "~/Library/Application Support/OpenEmu",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.openemu.openemu.sfl*",
    "~/Library/Application Support/org.openemu.OEXPCCAgent.Agents",
    "~/Library/Caches/OpenEmu",
    "~/Library/Caches/org.openemu.OpenEmu",
    "~/Library/Cookies/org.openemu.OpenEmu.binarycookies",
    "~/Library/HTTPStorages/org.openemu.OpenEmu.binarycookies",
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
