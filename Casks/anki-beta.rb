cask "anki-beta" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"

  version "2.1.53+rc2_96bacf79"

  if Hardware::CPU.intel?
    sha256 "90ea470354ff6fb15d6aea5836b18d0e4f7e6292c3192a11354222052c896996"
  else
    sha256 "273a7e4444f0f10ab81edd95f84b168c53e01e045b75b8e1ed48a208099aac16"
  end

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
