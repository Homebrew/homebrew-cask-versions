cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.57+beta1_5cdfa7a6"
  sha256 arm:   "74520bade5f00a14eb7f7fe241c33cd58488fd474a8965c8235dea01ff94f3bc",
         intel: "fa534d6e394384dac3f78f8166eaacb2b1707879e3f7b1f099fb0c4acfc61f2a"

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
