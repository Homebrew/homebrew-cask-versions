cask "xmind23" do
  version "23.05.3170-202305291822"
  sha256 "290849b2385281ba9905775bc85353309a4625256e7080546a1f8f7e7af347de"

  url "https://dl3.xmind.net/Xmind-for-macOS-#{version}.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  conflicts_with cask: [
    "homebrew/cask/xmind",
    "xmind8"
  ]

  app "Xmind.app"

  zap trash: [
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
    "~/Library/XMind",
  ]
end
