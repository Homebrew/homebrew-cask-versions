cask "godot-alpha" do
  version "4.0-alpha10"
  sha256 "a4f6e466338253cbf2e5334534d9d7aad42773691f7a7749ebe97a3b95d9788a"

  url "https://downloads.tuxfamily.org/godotengine/#{version.sub(%r{-alpha\d+}, '')}/#{version.minor.sub(%r{\d+-}, '')}/Godot_v#{version}_osx.universal.zip",
    verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "Game development engine"
  homepage "https://godotengine.org"

  livecheck do
    url "https://downloads.tuxfamily.org/godotengine/#{version.major_minor}/"
    regex(/^alpha\d+$/i)
  end

  conflicts_with cask: "godot"

  app "Godot.app"
  binary "#{appdir}/Godot.app/Contents/MacOS/Godot", target: "godot"

  uninstall quit: "org.godotengine.godot"

  zap trash: [
    "~/Library/Application Support/Godot",
    "~/Library/Caches/Godot",
    "~/Library/Saved Application State/org.godotengine.godot.savedState",
  ]
end