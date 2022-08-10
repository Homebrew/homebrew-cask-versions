cask "blender-lts" do
  arch arm: "arm64", intel: "x64"

  version "2.93.10"

  if Hardware::CPU.intel?
    sha256 "21bd814c76d2545c01064434448fad65d2254e726376f594091fda4fc8103e6c"
  else
    sha256 "314c82351dab9a9345f303587d9ec36154b06fd4151a83ab62d828c7567a43ae"
  end

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-#{arch}.dmg"
  name "Blender"
  desc "Free and open-source 3D creation suite"
  homepage "https://www.blender.org/"

  livecheck do
    url "https://www.blender.org/download/lts/"
    regex(%r{href=.*?/blender[._-]v?(\d+(?:\.\d+)+)-macOS-#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      minor_version = page[%r{href=["'].*/download/lts/(\d+(?:[.-]\d+)+)/["' >]}i, 1]
      next [] if minor_version.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://www.blender.org/download/lts/#{minor_version}/")
      next [] if version_page[:content].blank?

      version_page[:content].scan(regex).flatten
    end
  end

  conflicts_with cask: "blender"
  depends_on macos: ">= :high_sierra"

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

  zap trash: [
    "~/Library/Application Support/Blender",
    "~/Library/Saved Application State/org.blenderfoundation.blender.savedState",
  ]
end
