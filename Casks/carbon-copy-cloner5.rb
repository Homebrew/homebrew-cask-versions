cask "carbon-copy-cloner5" do
  version "5.1.27.6196"
  sha256 "b2edc2798f3e7497c3b2f624517909a8876b89026d181ac0c321447a6d47849f"

  url "https://bombich.scdn1.secure.raxcdn.com/software/files/ccc-#{version}.zip",
      verified: "bombich.scdn1.secure.raxcdn.com/software/files/"
  name "Carbon Copy Cloner 5"
  desc "Hard disk backup and cloning utility"
  homepage "https://bombich.com/"

  livecheck do
    url "https://bombich.com/download"
    strategy :page_match
    regex(/href=.*?v=(5+(?:\.\d+)+)/i)
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
