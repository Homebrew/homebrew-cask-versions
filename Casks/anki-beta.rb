cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.55+beta3_e5c4ccf0"
  sha256 arm:   "696d84cf5bfce7285dd805d11140e732f87023cb6c0b80f92c74fdbcb5c4f813",
         intel: "cc848d8ba2069aabbb81c038f18d153c541dbae34bb7fbb7b86ad2473e47e01d"

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
