cask "local-beta" do
  arch arm: "mac-arm64", intel: "mac"

  version "6.5.1,6187"
  sha256  arm:   "a39f57c6070fe7103e9109c8b020be1886c48b068c28f0d54eee8cab4ea28257",
          intel: "8cf6a3293b4749ac73edcbad6b404912cf7519d92538bf68b4890b01fc91d6f0"

  url "https://cdn.localwp.com/releases-beta/#{version.csv.first}+local-beta-#{version.csv.second}/local-beta-#{version.csv.first}-b#{version.csv.second}-#{arch}.dmg"
  name "Local Beta"
  desc "WordPress local development tool by Flywheel (beta)"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/beta/latest/#{arch}"
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
