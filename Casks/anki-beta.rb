cask "anki-beta" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"

  version "2.1.54+rc1_595c9273"

  if Hardware::CPU.intel?
    sha256 "1d63c5d11bfe148718252414fd1c6c37c379f2585daf227819b1754e62f88ac2"
  else
    sha256 "d6256fe505f82fa7919ba266f2b5d068f77440477042e34bd024d2d76af4039f"
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
