cask "kdeps-desktop" do
  version "2.58.0"

  on_arm do
    sha256 "d00dc6950047682d351d36db545cfafc5ed190112e3d4d80cb1caa2a7951b52c"

    url "https://github.com/kdeps/kdeps/releases/download/v#{version}/kdeps-desktop_#{version}_darwin_arm64.dmg"
  end
  on_intel do
    sha256 "07988b5ca1e7c0e2e3effd5db3f31278ae3b47b1a43180bcd5aa2ee33a5c4cbe"

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
