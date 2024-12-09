# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.38.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aquaproj/aqua/releases/download/v2.38.4/aqua_darwin_amd64.tar.gz"
      sha256 "14e8c20d9205c90d7bb1541f323f6b662609ff9feec6e32bcc1d8da99130f69d"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    on_arm do
      url "https://github.com/aquaproj/aqua/releases/download/v2.38.4/aqua_darwin_arm64.tar.gz"
      sha256 "9e44398a085b4f7a29c928aa40a5cbc539a423a24254fe75e0ed5e930167fba2"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquaproj/aqua/releases/download/v2.38.4/aqua_linux_amd64.tar.gz"
        sha256 "8f8970d3d9bdfc94740824e66d6fb9217beb7e319858ed288027c0fff2eebafe"

        def install
          bin.install "aqua"
          generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquaproj/aqua/releases/download/v2.38.4/aqua_linux_arm64.tar.gz"
        sha256 "fd35c780638c10eee5a41ec343c186207438b53e2674b437ab44c8f83966d81b"

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
