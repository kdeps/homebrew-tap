cask "kdeps-desktop" do
  version "2.66.1"

  on_arm do
    sha256 "3c2d055f793ee2014e138bc2cdbd370d1eb7f4bbdfbcf0d3db9bec53b044a88d"

    url "https://github.com/kdeps/kdeps/releases/download/v#{version}/kdeps-desktop_#{version}_darwin_arm64.dmg"
  end
  on_intel do
    sha256 "561bc5af0ca1f1329a04984d63d9c3cd6e40c74ad4838136ed1c0f30437d343c"

    url "https://github.com/kdeps/kdeps/releases/download/v#{version}/kdeps-desktop_#{version}_darwin_amd64.dmg"
  end

  name "kdeps"
  desc "Desktop chat client for the kdeps agent loop"
  homepage "https://kdeps.com/"

  livecheck do
    skip "Auto-generated on release."
  end

  depends_on :macos

  app "kdeps.app"

  # The app is ad-hoc signed, not notarized: clear the quarantine flag so it opens.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/kdeps.app"], must_succeed: false
  end

  zap trash: "~/.kdeps"
end
