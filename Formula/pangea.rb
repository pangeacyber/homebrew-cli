# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pangea < Formula
  desc ""
  homepage "https://pangea.cloud/"
  version "1.1.1"

  on_macos do
    on_intel do
      url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.1.1/pangea-darwin-amd64", using: CurlDownloadStrategy
      sha256 "cf1f00498d4d8e13c53c739cd93379c17346e406311a2c0ca6da334a4129208c"

      def install
        bin.install "pangea-darwin-amd64" => "pangea"
      end
    end
    on_arm do
      url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.1.1/pangea-darwin-arm64", using: CurlDownloadStrategy
      sha256 "4d62ca24d6950601713e0afd114a991e207ee923b09092566716244876d6d908"

      def install
        bin.install "pangea-darwin-arm64" => "pangea"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.1.1/pangea-linux-amd64", using: CurlDownloadStrategy
        sha256 "4dd9e96a86d68d458da5229443197a387ea348e982b51eb9a0266812c09bc513"

        def install
          bin.install "pangea-linux-amd64" => "pangea"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.1.1/pangea-linux-arm64", using: CurlDownloadStrategy
        sha256 "d2380f97ac0bf9eade06e9909cea4cc1d17786251a78769d8ea5bd0ae4951e41"

        def install
          bin.install "pangea-linux-arm64" => "pangea"
        end
      end
    end
  end
end
