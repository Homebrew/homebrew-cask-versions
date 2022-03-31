cask "appcode-eap" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.1,221.5080.98"

  if Hardware::CPU.intel?
    sha256 "0a7da6847fc20e727003aabd7e326f35fcc93cd2f101f3d2150acc06a5d8cb07"
  else
    sha256 "ae22ffdfaad2d1585a6cd75e6aefb77b205a1b94baa4f9ba79fe65a8dc9d4e6c"
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
