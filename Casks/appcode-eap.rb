cask "appcode-eap" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.2,222.3048.12"

  if Hardware::CPU.intel?
    sha256 "99dd53be567c6ee7f795331aa52df05295fa5f764271628cf2d8f2cf629fbc67"
  else
    sha256 "3b5a7e51577fab864a6cd6f3881ec9e7206feb8a990b9303d7eae0e10cb1307d"
  end

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
