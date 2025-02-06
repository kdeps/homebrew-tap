# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kdeps < Formula
  desc "Kdeps is a framework for creating dockerized AI Agent APIs"
  homepage "https://kdeps.com"
  version "0.1.15"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/kdeps/kdeps/releases/download/v0.1.15/kdeps_Darwin_x86_64.tar.gz"
      sha256 "73b8e2e8c72cdf7497b9b51593266e5528a5ebcb05895bc528c7ec9202cc152f"

      def install
        bin.install "kdeps"
      end
    end
    on_arm do
      url "https://github.com/kdeps/kdeps/releases/download/v0.1.15/kdeps_Darwin_arm64.tar.gz"
      sha256 "e0683d6676c39290b05af5ad64d4f1bb3758ea56c4acc7eb32102c2ec9152c9d"

      def install
        bin.install "kdeps"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kdeps/kdeps/releases/download/v0.1.15/kdeps_Linux_x86_64.tar.gz"
        sha256 "1644f481e8a5e84ee31ec3c81b18b64ec27e8b03630195719e05c0ca5e4011b8"

        def install
          bin.install "kdeps"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kdeps/kdeps/releases/download/v0.1.15/kdeps_Linux_arm64.tar.gz"
        sha256 "87086dab9211dea80e8e4f1eafa7b5c9a74e75c55ea02e7f75eac7094d6bcda9"

        def install
          bin.install "kdeps"
        end
      end
    end
  end
end
