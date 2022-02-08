cask "kindavim-beta" do
  version "2.0.0"
  sha256 "0f6d6b1af1448c635fdad0c88370cd6382c21c0b34aae41daecef89f61ff760a"

  url "https://github.com/godbout/kindaVim.theapp/releases/download/#{version}/kindaVim.zip",
      verified: "github.com/godbout/kindaVim.theapp/"
  name "kindaVim"
  desc "Use Vim in input fields and non input fields"
  homepage "https://kindavim.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
