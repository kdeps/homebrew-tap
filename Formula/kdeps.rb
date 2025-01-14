# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kdeps < Formula
  desc "Kdeps is a framework for creating dockerized AI Agent APIs"
  homepage "https://kdeps.com"
  version "0.1.5"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/kdeps/kdeps/releases/download/v0.1.5/kdeps_Darwin_x86_64.tar.gz"
      sha256 "e0a60a122b6e5954e1a8693b40e6a6c7e15f70a15e9ce73beaab65832138f667"

      def install
        bin.install "kdeps"
      end
    end
    on_arm do
      url "https://github.com/kdeps/kdeps/releases/download/v0.1.5/kdeps_Darwin_arm64.tar.gz"
      sha256 "0522ed02c95dee72e7ac60b3aecfd0047612757ed83966407b50b0a683590d22"

      def install
        bin.install "kdeps"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kdeps/kdeps/releases/download/v0.1.5/kdeps_Linux_x86_64.tar.gz"
        sha256 "f26173b690781d1a1f66875a232d5b1e387d20f00d6c62edc4eafe6c0dba6f6a"

        def install
          bin.install "kdeps"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kdeps/kdeps/releases/download/v0.1.5/kdeps_Linux_arm64.tar.gz"
        sha256 "ad5d00fb9fa33cd332e54e5f4d8dbcd5a65286b4f078ddf5338d78f2f086aa6a"

        def install
          bin.install "kdeps"
        end
      end
    end
  end
end
