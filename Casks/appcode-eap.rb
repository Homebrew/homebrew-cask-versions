cask "appcode-eap" do
  version "2022.1,221.4165.162"
  sha256 "20a52088c329f8bad05aafc3262ef83bf3a30c90b68f87ab0d4cd95fcf11c80a"

  url "https://download.jetbrains.com/objc/AppCode-#{version.csv.second}.dmg"
  name "AppCode EAP"
  desc "IDE for Swift, Objective-C, C, and C++ development"
  homepage "https://www.jetbrains.com/objc/nextversion/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=eap"
    strategy :page_match do |page|
      JSON.parse(page)["AC"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  conflicts_with cask: "appcode"

  app "AppCode #{version.csv.first} EAP.app"

  zap delete: [
    "~/Library/Preferences/AppCode#{version.csv.first}",
    "~/Library/Application Support/AppCode#{version.csv.first}",
    "~/Library/Caches/AppCode#{version.csv.first}",
    "~/Library/Logs/AppCode#{version.csv.first}",
  ]
end
