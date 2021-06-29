cask "local-beta" do
  version "6.0.0,5443"
  sha256 "b68ae287a49f5533af32e11666bad6b7e4428ebadc4b3d9ca1dcd4dd856c149b"

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
