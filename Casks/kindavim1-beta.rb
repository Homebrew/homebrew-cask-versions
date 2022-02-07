cask "kindavim1-beta" do
  version "1b25,0.9.25"
  sha256 :no_check

  url "https://github.com/godbout/kindaVim.theapp/releases/download/1b.25/kindaVim.zip", verified: "github.com/godbout/kindaVim.theapp"
  name "kindaVim"
  desc "Use Vim in input fields and non input fields"
  homepage "https://kindavim.app/"

  depends_on macos: ">= :monterey"

  app "kindaVim.app"

  zap trash: [
    "~/Library/Application Scripts/mo.com.sleeplessmind.kindaVim",
    "~/Library/Application Scripts/mo.com.sleeplessmind.kindaVim-LaunchAtLoginHelper",
    "~/Library/Application Support/kindaVim",
    "~/Library/Caches/mo.com.sleeplessmind.kindaVim",
    "~/Library/Containers/mo.com.sleeplessmind.kindaVim",
    "~/Library/Containers/mo.com.sleeplessmind.kindaVim-LaunchAtLoginHelper",
    "~/Library/Preferences/mo.com.sleeplessmind.kindaVim.plist",
    "~/Library/Saved Application State/mo.com.sleeplessmind.kindaVim.savedState",
  ]
end
