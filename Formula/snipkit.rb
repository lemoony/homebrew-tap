# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Snipkit < Formula
  desc "Access snippets from your favorite snippet manager without leaving the terminal."
  homepage "https://github.com/lemoony/snippet-kit"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lemoony/snippet-kit/releases/download/v0.0.1/snipkit_0.0.1_darwin_amd64.tar.gz"
      sha256 "cef9bda25c93280cfccbeb93065081bc2bd964307fd2effff68aec7a7730f892"

      def install
        bin.install "snipkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lemoony/snippet-kit/releases/download/v0.0.1/snipkit_0.0.1_linux_amd64.tar.gz"
      sha256 "345e9096b080a015db1baa08de43a110fdea0dcc174709593c98ad2d5e8eb794"

      def install
        bin.install "snipkit"
      end
    end
  end

  test do
    system "#{bin}/snipkit", "--version"
  end
end
