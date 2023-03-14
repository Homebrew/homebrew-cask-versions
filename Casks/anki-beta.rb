cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.61+beta1_5ad29c37"
  sha256 arm:   "6fda126ee7cf845d8eccef01bfa4609cffd5224b2a520f69b4cd6bcf32f9dd8a",
         intel: "549d608c02ea7a82530d427cd38a0cfbde69cf37e5329ea1d04b3efeb812ddf2"

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
