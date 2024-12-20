# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.40.0/aqua_darwin_amd64.tar.gz"
      sha256 "154c6a0bfefe1d20e19f2de6a864bb00c15753ae4f4cdc7da048cb03b09d65da"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.40.0/aqua_darwin_arm64.tar.gz"
      sha256 "685cb1c25d5098281a70e7d684a71ae6f8ce4f549ac8bc0b9d6d4553242cb17f"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquaproj/aqua/releases/download/v2.40.0/aqua_linux_amd64.tar.gz"
        sha256 "773ff7bc807ff4b2604e0a62d814422e5e38395b13d93bb38a0c8fc8cc43004b"

        def install
          bin.install "aqua"
          generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquaproj/aqua/releases/download/v2.40.0/aqua_linux_arm64.tar.gz"
        sha256 "24a949f67ad0ceb5415076028e371b0607ae7925458ab23667e9ac5d4b06d49c"

        def install
          bin.install "aqua"
          generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
