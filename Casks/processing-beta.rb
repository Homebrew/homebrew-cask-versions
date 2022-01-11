cask "processing-beta" do
  version "4.0b2,1277"
  sha256 "80b8238d717976894f55b20461395bc5448467cbe60f0e15ee8cb19436ed2d87"

  url "https://github.com/processing/processing4/releases/download/processing-#{version.after_comma}-#{version.before_comma}/processing-#{version.before_comma}-macosx.zip",
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

  conflicts_with cask: "processing"

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: [
    "~/Library/Processing",
    "~/Preferences/org.processing.app.plist",
    "~/Preferences/processing.app.tools.plist",
  ]
end
