cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.56+rc1_bc697597"
  sha256 arm:   "3a9df42fd7bfbb8ece959af1d0ae3f2864becc8012299d1d64585f604e4ed938",
         intel: "8b851c2cc62249e6d5652c9a19c504ce845939373644d98a4cccd4d31cac7205"

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
