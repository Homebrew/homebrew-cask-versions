cask "azure-data-studio-insiders" do
  version :latest
  sha256 :no_check

  url "https://azuredatastudio-update.azurewebsites.net/api/update/darwin/insider/VERSION" do |version_page|
    product_version = JSON.parse(version_page)["productVersion"]
    version = JSON.parse(version_page)["version"]

    ["https://sqlopsbuilds.azureedge.net/insider/#{version}/azuredatastudio-macos-#{product_version}-insider.zip",
     { verified: "sqlopsbuilds.azureedge.net/insider/" }]
  end
  name "Azure Data Studio - Insiders"
  desc "Data management tool that enables working with SQL Server"
  homepage "https://docs.microsoft.com/en-us/sql/azure-data-studio/"

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
