cask "insomnia-unstable" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    releases_url = "https://github.com/Kong/insomnia/releases"
    core_version = URI(releases_url).open do |io|
      io.read.scan(/href=["'].*?Insomnia[._-]Core[._-](\d+(?:\.\d+)+[._-](?:alpha|beta)[._-]\d*)\.dmg/i).max[0]
    end
    [
      "#{releases_url}/download/core%40#{core_version}/Insomnia.Core-#{core_version}.dmg",
      { verified: "github.com/Kong/insomnia/" },
    ]
  end
  name "Insomnia"
  desc "HTTP and GraphQL Client"
  homepage "https://insomnia.rest/"

  conflicts_with cask: "insomnia"

  app "Insomnia.app"

  zap trash: [
    "~/Library/Application Support/Insomnia",
    "~/Library/Caches/com.insomnia.app",
    "~/Library/Caches/com.insomnia.app.ShipIt",
    "~/Library/Cookies/com.insomnia.app.binarycookies",
    "~/Library/Preferences/ByHost/com.insomnia.app.ShipIt.*.plist",
    "~/Library/Preferences/com.insomnia.app.helper.plist",
    "~/Library/Preferences/com.insomnia.app.plist",
    "~/Library/Saved Application State/com.insomnia.app.savedState",
  ]

  caveats <<~EOS
    This may or may not be behind the latest "stable" release.
  EOS
end
