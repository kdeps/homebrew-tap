cask "kdeps-desktop" do
  version "2.53.2"

  on_arm do
    sha256 "f82006711e5aa77ddd61fd3fa4df26ba8af1b7acccaa4ae2c3198ccace10c26b"

    url "https://github.com/kdeps/kdeps/releases/download/v#{version}/kdeps-desktop_#{version}_darwin_arm64.dmg"
  end
  on_intel do
    sha256 "86c83e842db545a97e8e52c70dd6be4ee14cc6dda887daff49e7de5b38292701"

    url "https://github.com/kdeps/kdeps/releases/download/v#{version}/kdeps-desktop_#{version}_darwin_amd64.dmg"
  end

  name "kdeps"
  desc "Desktop chat client for the kdeps agent loop"
  homepage "https://kdeps.com/"

  livecheck do
    skip "Auto-generated on release."
  end

  depends_on macos: :big_sur

  app "kdeps.app"

  # The app is ad-hoc signed, not notarized: clear the quarantine flag so it opens.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "kdeps.app"], base: :appdir, must_succeed: false
  end

  zap trash: "~/.kdeps"
end
