# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chorctl < Formula
  desc "Management CLI for chorus service"
  homepage "https://github.com/clyso/chorus"
  version "0.5.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clyso/chorus/releases/download/v0.5.13/chorctl_v0.5.13_darwin_amd64.tar.gz"
      sha256 "23f619f4e88bb0b11771793601a996ecf7993de2fdafc3338016bd2a36c8a2bd"

      def install
        bin.install "chorctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/clyso/chorus/releases/download/v0.5.13/chorctl_v0.5.13_darwin_arm64.tar.gz"
      sha256 "998b75e1499b1af306673661c55489a07777c44c813eb56331bd2bde425d9f3d"

      def install
        bin.install "chorctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/clyso/chorus/releases/download/v0.5.13/chorctl_v0.5.13_linux_amd64.tar.gz"
      sha256 "109c96a210663fd51e4bc0079e18c53eeec0b7b1fdc9b1e3102767fe43d7eaf1"

      def install
        bin.install "chorctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clyso/chorus/releases/download/v0.5.13/chorctl_v0.5.13_linux_arm64.tar.gz"
      sha256 "db2a6a2a15973e73a449409e819d7b6226dfedc6e3695afc7ead443e750ff47c"

      def install
        bin.install "chorctl"
      end
    end
  end

  test do
    system "#{bin}/chorctl --version"
  end
end
