# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kdeps < Formula
  desc "Kdeps is a framework for creating dockerized AI Agent APIs"
  homepage "https://kdeps.com"
  version "0.1.28"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/kdeps/kdeps/releases/download/v0.1.28/kdeps_Darwin_x86_64.tar.gz"
      sha256 "edc8b9ba12c78e8584a7294061c1ca6ab8006a105a5ca39509926df5e9562b3a"

      def install
        bin.install "kdeps"
      end
    end
    on_arm do
      url "https://github.com/kdeps/kdeps/releases/download/v0.1.28/kdeps_Darwin_arm64.tar.gz"
      sha256 "237fe679548ecff07dde3022c0fb1347b5ae24ca6045e258cd92a57bbe622193"

      def install
        bin.install "kdeps"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kdeps/kdeps/releases/download/v0.1.28/kdeps_Linux_x86_64.tar.gz"
        sha256 "269a999132db9c05e8292a693f010d24c3540548921c8c3be379d62be5e3e523"

        def install
          bin.install "kdeps"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kdeps/kdeps/releases/download/v0.1.28/kdeps_Linux_arm64.tar.gz"
        sha256 "3c2ba712b71bf90d4f3716c91ef3b727503485f444aecb6edb6b02917d35a49c"

        def install
          bin.install "kdeps"
        end
      end
    end
  end
end
