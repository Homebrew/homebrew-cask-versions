cask "azure-data-studio-insiders" do
  version "1.34.0,209a93c5787dc0878855a5c7161a68811991e26f"
  sha256 "34468998ef78ef6ddc395efabd6b57d807c9862db2848743d93c38dacbed13c7"

  url "https://sqlopsbuilds.azureedge.net/insider/#{version.after_comma}/azuredatastudio-macos-#{version.before_comma}-insider.zip",
      verified: "sqlopsbuilds.azureedge.net/insider/"
  name "Azure Data Studio - Insiders"
  desc "Data management tool that enables working with SQL Server"
  homepage "https://docs.microsoft.com/en-us/sql/azure-data-studio/"

  livecheck do
    url "https://azuredatastudio-update.azurewebsites.net/api/update/darwin/insider/VERSION"
    strategy :page_match do |page|
      name = page[/"name":"(\d+(?:\.\d+)+)/i, 1]
      version = page[/"version":"(\w+)/i, 1]
      next if name.blank? || version.blank?

      "#{name},#{version}"
    end
  end

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
