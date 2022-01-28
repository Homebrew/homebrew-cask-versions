cask "processing-beta" do
  version "4.0b4,1279"
  sha256 "7441962f03de610fe2423d795f4c624e93319e7359aed24c1cb2084386d0d3dc"

  url "https://github.com/processing/processing4/releases/download/processing-#{version.csv.second}-#{version.csv.first}/processing-#{version.csv.first}-macos-x64.zip",
      verified: "github.com/processing/processing4/"
  name "Processing Beta"
  desc "Flexible software sketchbook and a language for learning how to code"
  homepage "https://processing.org/"

  livecheck do
    url :url
    regex(/processing[._-](\d+)[._-]v?(\d+(?:\.\d+b\d)+)/i)
    strategy :github_latest do |page|
      page.scan(regex)
          .map { |match| "#{match[1]},#{match[0]}" }
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
