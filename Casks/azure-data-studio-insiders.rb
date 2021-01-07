cask "azure-data-studio-insiders" do
  version "1.26.0,4af333d362b6c2d5577b3e2f541d3bd144cc4555"
  sha256 "414345346172923783a4523b810467bb0173a2d0cb0c2146d929e4b8964b19c9"

  url "https://sqlopsbuilds.azureedge.net/insider/#{version.after_comma}/azuredatastudio-macos-#{version.before_comma}-insider.zip",
      verified: "sqlopsbuilds.azureedge.net/insider/"
  appcast "https://azuredatastudio-update.azurewebsites.net/api/update/darwin/insider/VERSION"
  name "Azure Data Studio - Insiders"
  desc "Data management tool that enables working with SQL Server"
  homepage "https://docs.microsoft.com/en-us/sql/azure-data-studio/"

  auto_updates true

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
