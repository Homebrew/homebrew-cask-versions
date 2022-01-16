cask "processing-beta" do
  version "4.0b3,1278"
  sha256 "eaa9b818c2386de7b42aef4f6d43cca252905faeb39b87fd7e8cb208dac286d1"

  url "https://github.com/processing/processing4/releases/download/processing-#{version.csv.second}-#{version.csv.first}/processing-#{version.csv.first}-macosx.zip",
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
