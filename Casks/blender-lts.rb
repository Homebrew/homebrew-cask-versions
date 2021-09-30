cask "blender-lts" do
  version "2.93.4"

  if Hardware::CPU.intel?
    sha256 "9aab9e161e326f02d5ca51b9f77187e931ebc779bd85a604d797c187cd1611f4"
    url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-x64.dmg"
  else
    sha256 "0478a156829213a683b6be92cd12fe63c4f58fce3d0c2b4b839c157737eb14bf"
    url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-arm64.dmg"
  end

  name "Blender"
  desc "Free and open-source 3D creation suite"
  homepage "https://www.blender.org/"

  livecheck do
    url "https://www.blender.org/download/lts/"
    regex(%r{href=.*?/blender[._-]v?(\d+(?:\.\d+)+)-macOS-x64\.dmg}i)
    strategy :page_match do |page, regex|
      minor_version = page[%r{href=["'].*/download/lts/(\d+(?:[.-]\d+)+)/["' >]}i, 1]
      next [] if minor_version.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://www.blender.org/download/lts/#{minor_version}/")
      next [] if version_page[:content].blank?

      version_page[:content].scan(regex).flatten
    end
  end

  conflicts_with cask: "blender"

  app "Blender.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blender.wrapper.sh"
  binary shimscript, target: "blender"

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod "u+w", Dir.glob("#{staged_path}/*.app/**/__pycache__")

    File.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/Blender' "$@"
    EOS
  end
end
