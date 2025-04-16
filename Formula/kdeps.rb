# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kdeps < Formula
  desc "Kdeps is a framework for creating dockerized AI Agent APIs"
  homepage "https://kdeps.com"
  version "0.1.26"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/kdeps/kdeps/releases/download/v0.1.26/kdeps_Darwin_x86_64.tar.gz"
      sha256 "35f66cfd9d4d23966fb7ff4226187cadf77c410a4e391218385cf653b52bcdb0"

      def install
        bin.install "kdeps"
      end
    end
    on_arm do
      url "https://github.com/kdeps/kdeps/releases/download/v0.1.26/kdeps_Darwin_arm64.tar.gz"
      sha256 "1c1307ec2ffc9929aa0dcfd489121ecd5448a9e47e6710e2384203d6eccfdd82"

      def install
        bin.install "kdeps"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kdeps/kdeps/releases/download/v0.1.26/kdeps_Linux_x86_64.tar.gz"
        sha256 "568c2bfb3e2b5319553a81554c2d13b351341960367bdc913fec45c1f7969502"

        def install
          bin.install "kdeps"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kdeps/kdeps/releases/download/v0.1.26/kdeps_Linux_arm64.tar.gz"
        sha256 "ef7fb30e7af518919fb755386bdf76f8b9ac849b03a354a638d63e056c1fca72"

        def install
          bin.install "kdeps"
        end
      end
    end
  end
end
