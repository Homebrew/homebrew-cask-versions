cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.54+rc3_a8e34ce4"
  sha256 arm:   "1094c787826295aace1a89c624516aa48c9d533375db8cba82f694d2e0424fe9",
         intel: "05c02714d2f71ee6cc7b1332f7c90e10e88df4a3e23f07336817cb15bd0c71b5"

  url "https://apps.ankiweb.net/downloads/beta/anki-#{version}-mac-#{arch}-qt6.dmg"
  name "Anki Beta"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url "https://apps.ankiweb.net/downloads/beta/?C=N&O=D"
    # It looks for title instead of href because "+" character in version number
    # is escaped to %2B in href:
    regex(/title=["']?anki[._-]?(\d+\.\d+.\d+\+rc\d+_[a-f0-9]+)-mac(?:-#{arch})?(?:-qt\d+)?\.dmg["'\s>]/i)
  end

  conflicts_with cask: "anki"
  depends_on macos: ">= :big_sur"

  app "Anki.app"

  zap trash: "~/Library/Application Support/Anki*"
end
