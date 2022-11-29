cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.55+beta6_ca116699"
  sha256 arm:   "833cd699ac1303e2b5e58244af9a79e243551a26e9b956aae724c63a36ede577",
         intel: "688bd9842b33d0b04f9de51bae48404e4192a58d261ec7235a8c7c92d7099126"

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
