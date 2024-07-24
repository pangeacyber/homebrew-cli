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
      sha256 "dace6e511380ecda0873fa430269c795fe859d1d8c430ba93fbabb93d5ca2590"

      def install
        (libexec/"scripts").install "dev/install.sh"
        system "#{libexec}/scripts/install.sh"
      end
    end
    on_arm do
      url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.1.1/pangea-darwin-arm64", using: CurlDownloadStrategy
      sha256 "85eb2b7a14c9566a7b129341f587ccf61147f159a8f2495d827f4e2c16ae8dfb"

      def install
        (libexec/"scripts").install "dev/install.sh"
        system "#{libexec}/scripts/install.sh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.1.1/pangea-linux-amd64", using: CurlDownloadStrategy
        sha256 "c365ad9f0c751e0cc75884fb63a31abbe378dfd7e531fa91f59e34167b595fb2"

        def install
          (libexec/"scripts").install "dev/install.sh"
          system "#{libexec}/scripts/install.sh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.1.1/pangea-linux-arm64", using: CurlDownloadStrategy
        sha256 "1114394c9f69bd11ae2b92a61421510c68dff0ff6eb89d05936c60093f1aaea8"

        def install
          (libexec/"scripts").install "dev/install.sh"
          system "#{libexec}/scripts/install.sh"
        end
      end
    end
  end
end
