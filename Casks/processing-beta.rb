cask "processing-beta" do
  version "4.0b8,1283"
  sha256 "575aab5306cf6907d921a6dfcab1e9e7d8b440bd4c2c7951d44a9a312f97b042"

  url "https://github.com/processing/processing4/releases/download/processing-#{version.csv.second}-#{version.csv.first}/processing-#{version.csv.first}-macos-x64.zip",
      verified: "github.com/processing/processing4/"
  name "Processing Beta"
  desc "Flexible software sketchbook and a language for learning how to code"
  homepage "https://processing.org/"

  livecheck do
    url :url
    regex(/processing[._-](\d+)[._-]v?(\d+(?:\.\d+b\d)+)/i)
    strategy :github_latest do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  conflicts_with cask: [
    "processing",
    "processing2",
  ]

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: [
    "~/Library/Processing",
    "~/Preferences/org.processing.app.plist",
    "~/Preferences/processing.app.tools.plist",
  ]
end
