cask "local-beta" do
  version "5.10.5,5402"
  sha256 "7ce0eac6068344ba14c582fea27b66392f633f2b3bb07520d2f74a32effeb03a"

  url "https://cdn.localwp.com/releases-beta/#{version.before_comma}+local-beta-#{version.after_comma}/local-beta-#{version.before_comma}-b#{version.after_comma}-mac.dmg"
  name "Local Beta"
  desc "WordPress local development tool by Flywheel (beta)"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/beta/latest/mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+(?:\.\d+)*)\+local-beta-(\d+)/})
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
