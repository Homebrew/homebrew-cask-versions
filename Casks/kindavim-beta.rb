cask "kindavim-beta" do
  version "1.0.0"
  sha256 "4c94284b2a31f2e4959005ff0f771d65f5d4f9b69c3d5326fcd0359423eb361e"

  url "https://github.com/godbout/kindaVim.theapp/releases/download/#{version}/kindaVim.zip",
      verified: "github.com/godbout/kindaVim.theapp/"
  name "kindaVim"
  desc "Use Vim in input fields and non input fields"
  homepage "https://kindavim.app/"

  conflicts_with cask: "kindavim"
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
