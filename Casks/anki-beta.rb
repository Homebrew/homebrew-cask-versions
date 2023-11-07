cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "23.10.1,rc2"
  sha256 arm:   "c372d548b89c38eb09a37b3639db434a7533ffd6d6af6b3dde5a33be2ca12a6d",
         intel: "79f65b072a0e3a561462b1f45d8390db589a04af6f0b3e9100b91ddd73376215"

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
