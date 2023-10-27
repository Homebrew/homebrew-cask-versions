cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "23.10,rc2"
  sha256 arm:   "bf54ec0334e94e83af204585476e7e1529408cd4406feff0d9ac71e0e423cc0a",
         intel: "ade649cba91022578f042720273e2ba2e4b1ffd001c0e5850a3e5739dba53ccb"

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
