cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "23.10.1,rc3"
  sha256 arm:   "5f21bc6afb55a86d6e425224dc9408867a1f5c97cfbaed8939c2fbd93b8e186b",
         intel: "60471ba254927e98aca719a3055a8f723220922415a9e4ee03fccd88db456141"

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
