# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chorctl < Formula
  desc "Management CLI for chorus service"
  homepage "https://github.com/clyso/chorus"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clyso/chorus/releases/download/v0.5.3/chorctl_v0.5.3_darwin_amd64.tar.gz"
      sha256 "89b3ddefaa46372f65d56b07d2c949c4f05ac264be8b1bc8ef8aad1690ba3a75"

      def install
        bin.install "chorctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/clyso/chorus/releases/download/v0.5.3/chorctl_v0.5.3_darwin_arm64.tar.gz"
      sha256 "3eed3e6c182e26fc3123d24bee77f2bc3054702baaa89389357b77bb52b1f4a2"

      def install
        bin.install "chorctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/clyso/chorus/releases/download/v0.5.3/chorctl_v0.5.3_linux_amd64.tar.gz"
      sha256 "108788559168bd64bb130bfc5b42774556ada9a92d1a1454cbdf32151f23e048"

      def install
        bin.install "chorctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clyso/chorus/releases/download/v0.5.3/chorctl_v0.5.3_linux_arm64.tar.gz"
      sha256 "6f9afc8731936096eb480c5ea5cad95e33cf6dfbafb32979951d8a9440c46195"

      def install
        bin.install "chorctl"
      end
    end
  end

  test do
    system "#{bin}/chorctl --version"
  end
end