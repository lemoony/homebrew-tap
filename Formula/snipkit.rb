# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Snipkit < Formula
  desc "Access snippets from your favorite snippet manager without leaving the terminal"
  homepage "https://github.com/lemoony/snipkit"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lemoony/snipkit/releases/download/v1.3.1/snipkit_1.3.1_darwin_amd64.tar.gz"
      sha256 "f9e8a5007ebe3f58ac3d828bbd3c46899bdc235ca78fa7c08a9f93bf5eebcc2a"

      def install
        bin.install "snipkit"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lemoony/snipkit/releases/download/v1.3.1/snipkit_1.3.1_darwin_arm64.tar.gz"
      sha256 "edadb1a336dfff51bcf7f7cb05dcfae1701b388b7c8b5a5105cab1537e309e55"

      def install
        bin.install "snipkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lemoony/snipkit/releases/download/v1.3.1/snipkit_1.3.1_linux_amd64.tar.gz"
      sha256 "3f2e89e7f268ed63155fd9344abe8a9de9bbb8c0c280344580fd8764f295806c"

      def install
        bin.install "snipkit"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lemoony/snipkit/releases/download/v1.3.1/snipkit_1.3.1_linux_armv6.tar.gz"
      sha256 "4f10a8790b33c6901ef361d8592c3e50c44b852ad057d174f2f056e3e5907632"

      def install
        bin.install "snipkit"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lemoony/snipkit/releases/download/v1.3.1/snipkit_1.3.1_linux_arm64.tar.gz"
      sha256 "3bdb5e52b7a0aca2564cc907f02c24917b1a78ef4d50d50e5e5f6dfa161e42fe"

      def install
        bin.install "snipkit"
      end
    end
  end

  test do
    system "#{bin}/snipkit", "--version"
  end
end
