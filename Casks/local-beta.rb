cask "local-beta" do
  version "6.4.0,5925"
  sha256 "cb1719a1f9f5fe52062137b292c0e6f5ff6dd575e0e49823a48c78b51e19dfbb"

  url "https://cdn.localwp.com/releases-beta/#{version.csv.first}+local-beta-#{version.csv.second}/local-beta-#{version.csv.first}-b#{version.csv.second}-mac.dmg"
  name "Local Beta"
  desc "WordPress local development tool by Flywheel (beta)"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/beta/latest/mac"
    regex(%r{/(\d+(?:\.\d+)+)\+local-beta-(\d+)/}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
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
