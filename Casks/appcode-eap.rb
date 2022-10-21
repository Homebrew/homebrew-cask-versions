cask "appcode-eap" do
  arch arm: "-aarch64"

  version "2022.3,223.7126.4"
  sha256 arm:   "6375c51204b1266a5817a7e82d3ecfdbc30f06ea8c571e43151c99a46bdbdc52",
         intel: "5e836b6d16ba12966386143f9e0fd34bc63c5eb1a7986525634c1b5f43160f68"

  url "https://download.jetbrains.com/objc/AppCode-#{version.csv.second}#{arch}.dmg"
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
