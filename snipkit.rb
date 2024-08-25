# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Snipkit < Formula
  desc "Access snippets from your favorite snippet manager without leaving the terminal"
  homepage "https://github.com/lemoony/snipkit"
  version "1.5.0"

  on_macos do
    on_intel do
      url "https://github.com/lemoony/snipkit/releases/download/v1.5.0/snipkit_1.5.0_darwin_amd64.tar.gz"
      sha256 "31ca7969f16e21c0b8321ee442475bbe72db5ab740888b1b7d18f0deb07b3013"

      def install
        bin.install "snipkit"
      end
    end
    on_arm do
      url "https://github.com/lemoony/snipkit/releases/download/v1.5.0/snipkit_1.5.0_darwin_arm64.tar.gz"
      sha256 "9495bb00f6e1674254ff10f0adf6983e5b182ce4175f64ed5e3b6264dd981695"

      def install
        bin.install "snipkit"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lemoony/snipkit/releases/download/v1.5.0/snipkit_1.5.0_linux_amd64.tar.gz"
        sha256 "6afdb1bc8b97b702ed5f6e748396b20ed3c8924613ebcb094710b561067474c5"

        def install
          bin.install "snipkit"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/lemoony/snipkit/releases/download/v1.5.0/snipkit_1.5.0_linux_armv6.tar.gz"
        sha256 "cd7d8b852fed8f639a7ab92ee3ab2969841b811cec3aebd8139769e44c6342d7"

        def install
          bin.install "snipkit"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lemoony/snipkit/releases/download/v1.5.0/snipkit_1.5.0_linux_arm64.tar.gz"
        sha256 "979df7ec9a3ad6c5dbd518afae210b1acbc602a1fa0c14710f37a9e6a28e2576"

        def install
          bin.install "snipkit"
        end
      end
    end
  end

  test do
    system "#{bin}/snipkit", "--version"
  end
end
