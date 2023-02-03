cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "2.1.57+rc1_14189a91"
  sha256 arm:   "bbf685029db7290419aedd33340105c981dd62f26ecff3761cb158445e922b0f",
         intel: "73740ccb39e8096e3075eb191881ad759a584bbafe9fbe62e7ca415796a863f4"

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
