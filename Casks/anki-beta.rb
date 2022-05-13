cask "anki-beta" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"

  version "2.1.52+rc3_ab1c2395"

  if Hardware::CPU.intel?
    sha256 "91e43169fd0a3908c26f6d9d403ff5572b56d9f937e4e3d4272278da46a802bf"
  else
    sha256 "9983d23a35e1d7c9d6a598d72c08c4a1da31a29afaaf169d1123007ffb7d4a52"
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
