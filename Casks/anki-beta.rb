cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "23.10,rc1"
  sha256 arm:   "ba305ead0f62d06beea022e0d0b2f49ac9e19264e5a2b06162e997d0580019fd",
         intel: "752a2594409af21bd963f259d162d474a966631bc26eaa4ef239f3e104ae4b31"

  url "https://github.com/ankitects/anki/releases/download/#{version.delete(",")}/anki-#{version.csv.first}-mac-#{arch}-qt6.dmg",
      verified: "github.com/ankitects/anki/"
  name "Anki Beta"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url "https://github.com/ankitects/anki/releases"
    regex(/(\d+(?:\.\d+)+)((?:beta|rc)(?:\w*))/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  conflicts_with cask: "anki"
  depends_on macos: ">= :big_sur"

  app "Anki.app"

  zap trash: "~/Library/Application Support/Anki*"
end
