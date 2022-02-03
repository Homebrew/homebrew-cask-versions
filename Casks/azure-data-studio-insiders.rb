cask "azure-data-studio-insiders" do
  version "1.35.0,c535c2dbdebe0d302d4ea5f1797b47f4d8ec95c9"
  sha256 "0443c7905036245d4943b7bcd047c0300a1fc6f78fe4b1c3ca999babbafbe57c"

  url "https://sqlopsbuilds.azureedge.net/insider/#{version.csv.second}/azuredatastudio-macos-#{version.csv.first}-insider.zip",
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
