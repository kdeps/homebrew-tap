cask "kdeps-desktop" do
  version "3.1.0"

  on_arm do
    sha256 "9baded2c0c909758908524bb8f170815bcea968d178af4b62486f42153d9436d"

    url "https://github.com/kdeps/kdeps/releases/download/v#{version}/kdeps-desktop_#{version}_darwin_arm64.dmg"
  end
  on_intel do
    sha256 "a01fa6b021861cb34fd833c11c4942defbcad91f9fa9e9f87e9479e2758bd6f9"

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
