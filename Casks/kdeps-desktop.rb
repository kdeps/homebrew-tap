cask "kdeps-desktop" do
  version "2.60.0"

  on_arm do
    sha256 "d6f7071c2e27d533d21369eccd0a922f5bcc68861b7fbf1af4038399d7b221e8"

    url "https://github.com/kdeps/kdeps/releases/download/v#{version}/kdeps-desktop_#{version}_darwin_arm64.dmg"
  end
  on_intel do
    sha256 "86811d81a23d31496db67cdc056bb48cba1a44189d90b217b11d3fa714c45dad"

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
