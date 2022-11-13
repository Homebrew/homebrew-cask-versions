cask "azure-data-studio-insiders" do
  arch arm: "-arm64"

  version "1.41.0"
  sha256 arm:   "9c621fbc13dfed72477463485ad74a9d1dd31e084d54116b3bc8ff615edd5a32",
         intel: "686f0142423466741c1610e227324aa6b389c5f2f16aa9f08923207b986e88d3"

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
