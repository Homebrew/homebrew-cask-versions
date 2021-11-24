cask "local-beta" do
  version "6.1.8,5620"
  sha256 "28cda5631ebb6c24c0b2dcb9b4139712ed3ee9e4f7488c8df362f018bf9462f8"

  url "https://cdn.localwp.com/releases-beta/#{version.before_comma}+local-beta-#{version.after_comma}/local-beta-#{version.before_comma}-b#{version.after_comma}-mac.dmg"
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
