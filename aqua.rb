# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.53.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.53.3/aqua_darwin_amd64.tar.gz"
      sha256 "e4e20219789db4ade531a892a8b41e8604cfa21d03eef73cd4e5e0347bfb9755"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.53.3/aqua_darwin_arm64.tar.gz"
      sha256 "da9eccc80c63d336284560c141c1be8aca44b0d595f59a6ede5c7fe9281733a1"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.53.3/aqua_linux_amd64.tar.gz"
      sha256 "2450bcf687c93e91ec892d49e5787b5b856796d38eb7283f52a351d82a8e31ee"
      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.53.3/aqua_linux_arm64.tar.gz"
      sha256 "562ad1f387f21161ab37eee24a3db99ed535488fe72bdc118866b854526494ca"
      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
