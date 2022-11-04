cask "azure-data-studio-insiders" do
  arch arm: "-arm64"

  version "1.40.0"
  sha256 arm:   "6520f0ad98c0918568af6d4d4b8c24ca91aa71f572ac7f90fcfe01f46f11254a",
         intel: "7a630a5940db05f588cf46fa7be7bfb83e50230c51173f20d29c23c2636e6dc0"

  url "https://azuredatastudio-update.azurewebsites.net/#{version}/darwin#{arch}/insider",
      verified: "azuredatastudio-update.azurewebsites.net"
  name "Azure Data Studio - Insiders"
  desc "Data management tool that enables working with SQL Server"
  homepage "https://docs.microsoft.com/en-us/sql/azure-data-studio/"

  livecheck do
    url "https://azuredatastudio-update.azurewebsites.net/api/update/darwin/insider/VERSION"
    regex(/"productVersion"\s*:\s*"(\d+(:?\.\d+)+)"/i)
  end

  app "Azure Data Studio - Insiders.app"
  binary "#{appdir}/Azure Data Studio - Insiders.app/Contents/Resources/app/bin/code",
         target: "azuredatastudio-insiders"

  zap trash: [
    "~/.azuredatastudio-insiders",
    "~/Library/Application Support/Azure Data Studio",
    "~/Library/Application Support/azuredatastudio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.azuredatastudio.oss.insiders.sfl2",
    "~/Library/Caches/com.azuredatastudio.oss.insiders",
    "~/Library/Caches/com.azuredatastudio.oss.insiders.ShipIt",
    "~/Library/Preferences/com.azuredatastudio.oss.insiders.plist",
    "~/Library/Saved Application State/com.azuredatastudio.oss.insiders.savedState",
  ]
end
