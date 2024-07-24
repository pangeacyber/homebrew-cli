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
      sha256 "7fb73ec89690ad935865b59e95d392c49112c72a47f8e2b818461b7b56ed585e"

      def install
        bin.install "pangea-darwin-amd64" => "pangea"
      end
    end
    on_arm do
      url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.1.1/pangea-darwin-arm64", using: CurlDownloadStrategy
      sha256 "ecd6d715478fc268b2997695508e4530b581ccad5d5ce75bd2adb7370435a040"

      def install
        bin.install "pangea-darwin-arm64" => "pangea"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.1.1/pangea-linux-amd64", using: CurlDownloadStrategy
        sha256 "f6ab1422991c40ae4a50cfadf8b16f9688bc330af187e43820133cef99b9af78"

        def install
          bin.install "pangea-linux-amd64" => "pangea"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.1.1/pangea-linux-arm64", using: CurlDownloadStrategy
        sha256 "4d6abaf8987c2f54a154ad471e0362a8cbb33e5bcb37f85b89cc7156be320eb8"

        def install
          bin.install "pangea-linux-arm64" => "pangea"
        end
      end
    end
  end
end
