cask "intellij-idea-ce19" do
  version "2019.3.5,193.7288.26"
  sha256 "9069f23e8dda9307083526c6c438b40cb1858598789c5480040d9345b605d80b"

  url "https://download.jetbrains.com/idea/ideaIC-#{version.csv.first}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=IIC&latest=false&type=release"
  name "IntelliJ IDEA Community Edition"
  name "IntelliJ IDEA CE"
  desc "IDE for Java development - community edition"
  homepage "https://www.jetbrains.com/idea/"

  auto_updates true
  conflicts_with cask: "intellij-idea-ce"

  app "IntelliJ IDEA CE.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "idea") }.each do |path|
      if File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/IdeaIC#{version.major_minor}",
    "~/Library/Caches/IdeaIC#{version.major_minor}",
    "~/Library/Logs/IdeaIC#{version.major_minor}",
    "~/Library/Preferences/IdeaIC#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState",
  ]
end
