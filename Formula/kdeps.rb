# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kdeps < Formula
  desc "Kdeps is a framework for creating dockerized AI Agent APIs"
  homepage "https://kdeps.com"
  version "0.1.20"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/kdeps/kdeps/releases/download/v0.1.20/kdeps_Darwin_x86_64.tar.gz"
      sha256 "b5493982bdd5bb6a85d5ffedb21a421e84bdd0b7722e72fe386f8420a728f1a6"

      def install
        bin.install "kdeps"
      end
    end
    on_arm do
      url "https://github.com/kdeps/kdeps/releases/download/v0.1.20/kdeps_Darwin_arm64.tar.gz"
      sha256 "100a977e3b78f3fdffbe696881d9839d02d6914474188dd1be428e7e618b32ac"

      def install
        bin.install "kdeps"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kdeps/kdeps/releases/download/v0.1.20/kdeps_Linux_x86_64.tar.gz"
        sha256 "901581a21680852fce18ac0e638785a8024d8a988bc60c76f462dfe39ff731b6"

        def install
          bin.install "kdeps"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kdeps/kdeps/releases/download/v0.1.20/kdeps_Linux_arm64.tar.gz"
        sha256 "9cf1a081983c5789ea3a7f899c200020f50921a19545c015ffbe65cd00570bb6"

        def install
          bin.install "kdeps"
        end
      end
    end
  end
end
