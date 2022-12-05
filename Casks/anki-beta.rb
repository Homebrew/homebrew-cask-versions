cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.55+beta7_fad1ff74"
  sha256 arm:   "684e260e6504a78b1db67e8e5fe0bb4998dcdba1cded2589313aad42eda41451",
         intel: "80c158b8b9e2a28dc73eb6fa332965079722bc3c8a5702d0f463eb97058c181d"

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
