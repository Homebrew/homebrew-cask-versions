cask "local-beta" do
  version "6.2.0,5667"
  sha256 "e2929f740bfe2707731cd28cdc2a8d43db32413a59b3bf40331c19289cfd7c78"

  url "https://cdn.localwp.com/releases-beta/#{version.csv[0]}+local-beta-#{version.csv[1]}/local-beta-#{version.csv[0]}-b#{version.csv[1]}-mac.dmg"
  name "Local Beta"
  desc "WordPress local development tool by Flywheel (beta)"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/beta/latest/mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+(?:\.\d+)+)\+local-beta-(\d+)/})
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Local Beta.app"

  zap trash: [
    "~/Library/Application Support/Local Beta",
    "~/Library/Logs/local-beta.log",
    "~/Library/Preferences/com.getflywheel.lightning.local-beta.plist",
    "~/Library/Saved Application State/com.getflywheel.lightning.local-beta.savedState",
  ]
end
