cask "anki-beta" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"

  version "2.1.50+rc4_26d40c3a"

  if Hardware::CPU.intel?
    sha256 "7f1ff8c79ee7f01efd19c6a434e39209b0664da693cf3a8441dc5dc5f5a9e882"
  else
    sha256 "a17c47ddde0b34caffef13d68f696650793ef7246303b1f74c173d8231d44f53"
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
