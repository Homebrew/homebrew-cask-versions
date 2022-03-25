cask "appcode-eap" do
  version "2022.1,221.5080.57"
  sha256 "eb51014b7fb7404196870766cec5c3030c3446b4f4cd1d840c5a51d22d2d04ce"

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
    "~/Library/Application Support/AppCode#{version.csv.first}",
    "~/Library/Caches/AppCode#{version.csv.first}",
    "~/Library/Logs/AppCode#{version.csv.first}",
    "~/Library/Preferences/AppCode#{version.csv.first}",
  ]
end
