cask "local-beta" do
  arch arm: "-arm64"

  version "8.3.2,6656"
  sha256  arm:   "8455e3bba2feaec8f460681a16c2fc6e6207d93a51a2ad30cc5a5f525cec3c39",
          intel: "054ce161e4ddc746039adc370bb14ad76ee03e016547f4b54da534b45ab53d9a"

  url "https://cdn.localwp.com/releases-beta/#{version.csv.first}+local-beta-#{version.csv.second}/local-beta-#{version.csv.first}-b#{version.csv.second}-mac#{arch}.dmg"
  name "Local Beta"
  desc "WordPress local development tool by Flywheel (beta)"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/beta/latest/mac#{arch}"
    regex(%r{/(\d+(?:\.\d+)+)\+local-beta-(\d+)/}i)
    strategy :header_match do |headers|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Local Beta.app"

  zap trash: [
    "~/Library/Application Support/Local Beta",
    "~/Library/Logs/local-beta.log",
    "~/Library/Preferences/com.getflywheel.lightning.local-beta.plist",
    "~/Library/Saved Application State/com.getflywheel.lightning.local-beta.savedState",
  ]
end
