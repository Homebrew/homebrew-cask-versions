# frozen_string_literal: true

cask "gimp-dev" do
  version "2.99.14"
  sha256 "cc3cb7e63aaa16bfb51eaa553d2466fa2935e7282378b50c9e9156d4f2dab3f8"

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-x86_64.dmg"
  name "GIMP development version"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/devel/"
    strategy :page_match
    regex(%r{href=.*?/gimp-(\d+(?:\.\d+)+)-x86_64\.dmg}i)
  end

  app "GIMP-#{version.major_minor}.app"
  binary "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp"

  postflight do
    set_permissions "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp", "a+rx"
  end

  zap trash: [
    "~/Library/Application Support/Gimp",
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
  ]
end
