cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.55+beta4_e3c3405f"
  sha256 arm:   "d3038e1b817700892b827d39ba5a7d5fe346875833a97517b7b5b1d33a3f95ec",
         intel: "4e8e0c8117bb3f1e3859ad220a346a17fd302c02b84eaa831d4c17b3b1d1d9d7"

  url "https://apps.ankiweb.net/downloads/beta/anki-#{version}-mac-#{arch}-qt6.dmg"
  name "Anki Beta"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url "https://apps.ankiweb.net/downloads/beta/"
    regex(/title=["']?anki[._-]?(\d+\.\d+.\d+\+beta\d+_[a-f0-9]+)-mac(?:-#{arch})?(?:-qt\d+)?\.dmg["'\s>]/i)
  end

  conflicts_with cask: "anki"
  depends_on macos: ">= :big_sur"

  app "Anki.app"

  zap trash: "~/Library/Application Support/Anki*"
end
