# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pangea < Formula
  desc ""
  homepage "https://pangea.cloud/"
  version "1.0.6"

  on_macos do
    on_intel do
      url "https://github.com/pangeacyber/pangea-cli-internal/releases/download/v1.0.6/pangea-darwin-amd64", using: CurlDownloadStrategy
      sha256 "f3697bd6f11d1570ecce4a05bf5ca0a2f7b8a17b028a40c0baed60bc74ea79fd"

      def install
        (libexec/"scripts").install "dev/install.sh"
        system "#{libexec}/scripts/install.sh"
      end
    end
    on_arm do
      url "https://github.com/pangeacyber/pangea-cli-internal/releases/download/v1.0.6/pangea-darwin-arm64", using: CurlDownloadStrategy
      sha256 "b45d42633189385fa622bf81b11ee56eb1d960d804f93e721f56ce1be5ce1ea3"

      def install
        (libexec/"scripts").install "dev/install.sh"
        system "#{libexec}/scripts/install.sh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pangeacyber/pangea-cli-internal/releases/download/v1.0.6/pangea-linux-amd64", using: CurlDownloadStrategy
        sha256 "2b2780142be8d4a9417b899dbc926ef867fc656d132dad6662a848d6c5262544"

        def install
          (libexec/"scripts").install "dev/install.sh"
          system "#{libexec}/scripts/install.sh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pangeacyber/pangea-cli-internal/releases/download/v1.0.6/pangea-linux-arm64", using: CurlDownloadStrategy
        sha256 "61671b4ad7092ed3620b14ed4107da22084b23e27b30417378aa44a754e508ad"

        def install
          (libexec/"scripts").install "dev/install.sh"
          system "#{libexec}/scripts/install.sh"
        end
      end
    end
  end
end
