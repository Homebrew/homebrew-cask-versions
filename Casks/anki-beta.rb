cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.61+beta2_d0ab7acb"
  sha256 arm:   "fd1b6144fbd59afdccd25d8e2daf5e7c811fb206cbb3d5c7ce3f243bd5dad86c",
         intel: "8c43bb394733a1370006ebae4d299e4fc8e113cca446a432e13a1ada3ea95703"

  url "https://apps.ankiweb.net/downloads/beta/anki-#{version}-mac-#{arch}-qt6.dmg"
  name "Anki Beta"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url "https://apps.ankiweb.net/downloads/beta/"
    regex(/title=["']?anki[._-]?(\d+\.\d+.\d+\+(?:beta|rc)\d+_[a-f0-9]+)-mac(?:-#{arch})?(?:-qt\d+)?\.dmg["'\s>]/i)
  end

  conflicts_with cask: "anki"
  depends_on macos: ">= :big_sur"

  app "Anki.app"

  zap trash: "~/Library/Application Support/Anki*"
end
