# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.25.1/aqua_darwin_arm64.tar.gz"
      sha256 "96cad04547f0a32687a92d82f2bf8d256ade93cd1ac43373e189edc79dff12bc"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.25.1/aqua_darwin_amd64.tar.gz"
      sha256 "791df099b6491a212ac5996580c6851fa1fa843c430160cf897b5cee4d49cd67"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.25.1/aqua_linux_amd64.tar.gz"
      sha256 "4f33be343873ace8fa448193c4e00f9c2bd467daa34abbdb2c3a57aa344bc43d"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.25.1/aqua_linux_arm64.tar.gz"
      sha256 "a929dad9cc6c841aff02712392a5d4898d7d935f5085ccfaaf637d6784aab28a"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
