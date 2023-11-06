cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "23.10.1,rc1"
  sha256 arm:   "d2f6db799d27bf4378657197bd4bd8225a7c6a7ef85443177b67cf8053b8b9df",
         intel: "33fc6c8a974a82413601fd5d38738b23072a42a5e69aad5b88c3bc7667e7f8ca"

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
