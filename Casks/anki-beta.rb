cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.66+beta1_46915605"
  sha256 arm:   "ede7a97f4e5b1aa03d6e834020909061d8f8afcee0cbc3a17034dc1de1d3e884",
         intel: "4ad62b8c275f93032ba5fdf85a05afb15b11cace5ea6c6712261477d93542a3d"

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
