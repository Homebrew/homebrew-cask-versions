cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.62+beta1_bf05fae9"
  sha256 arm:   "a3fcd1a031917e715c80b33a1504ee0fd1f30567637b646cfec1e234123efba6",
         intel: "f0d6b51269d8c0e277901ba71aa5486cd1bba5bc2ab2cd2c261d888cd6bf4767"

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
