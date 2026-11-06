cask "kdeps-desktop" do
  version "2.71.3"

  on_arm do
    sha256 "e8a29a8907131f89c5253f1f11185f38aa2651dc12a05d903ddbce1e1c9bfae7"

    url "https://github.com/kdeps/kdeps/releases/download/v#{version}/kdeps-desktop_#{version}_darwin_arm64.dmg"
  end
  on_intel do
    sha256 "1df966c8a69d6bdcbf2d10a65c7cafa27ebc1054f235058ee2c665f0bb750bfb"

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
