cask "local-beta" do
  version "5.9.9,5214"
  sha256 "0e33ddee5a81f750a93f012f90d71ad559ce73a7072ad8a0acd25660192d0738"

  url "https://cdn.localwp.com/releases-beta/#{version.before_comma}+local-beta-#{version.after_comma}/local-beta-#{version.before_comma}-b#{version.after_comma}-mac.dmg"
  name "Local Beta"
  desc "WordPress local development tool by Flywheel (beta)"
  homepage "https://localwp.com/"

  app "Local Beta.app"

  zap trash: [
    "~/Library/Application Support/Local Beta",
    "~/Library/Logs/local-beta.log",
    "~/Library/Preferences/com.getflywheel.lightning.local-beta.plist",
    "~/Library/Saved Application State/com.getflywheel.lightning.local-beta.savedState",
  ]
end
