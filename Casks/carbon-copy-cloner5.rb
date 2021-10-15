cask "carbon-copy-cloner5" do
  version "5.1.28.6213"
  sha256 "050ed65c493ff75bf415210de357ce552833c724e39c9d61043fd10151dd7a22"

  url "https://bombich.scdn1.secure.raxcdn.com/software/files/ccc-#{version}.zip",
      verified: "bombich.scdn1.secure.raxcdn.com/software/files/"
  name "Carbon Copy Cloner 5"
  desc "Hard disk backup and cloning utility"
  homepage "https://bombich.com/"

  livecheck do
    url "https://bombich.com/software/updates/ccc.php?os_major=11&os_minor=6&os_bugfix=0&ccc=6000&beta=0&locale=en"
    strategy :page_match do |page|
      version = JSON.parse(page)["stable"]["version"]
      build = JSON.parse(page)["stable"]["build"]
      next if version.blank? || build.blank?

      "#{version}.#{build}"
    end
  end

  auto_updates true
  conflicts_with cask: "carbon-copy-cloner"

  app "Carbon Copy Cloner.app"

  uninstall login_item: "CCC User Agent",
            quit:       [
              "com.bombich.ccc",
              "com.bombich.cccuseragent",
            ]

  zap trash: [
    "~/Library/Application Support/com.bombich.ccc",
    "~/Library/Caches/com.bombich.ccc",
    "~/Library/Preferences/com.bombich.ccc.plist",
    "~/Library/Preferences/com.bombich.cccuseragent.plist",
    "~/Library/Saved Application State/com.bombich.ccc.savedState",
    "/Library/LaunchDaemons/com.bombich.ccchelper.plist",
  ]
end
