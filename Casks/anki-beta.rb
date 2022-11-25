cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.55+beta5_b88a7394"
  sha256 arm:   "540a3afddd8d9372f535b1c491fc682687af8dd0c245338d05c32b7ca6423a1e",
         intel: "0003501320357afad596633de3eee5b539ad715bc193032936f81644fc26e86e"

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
