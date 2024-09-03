# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pangea < Formula
  desc ""
  homepage "https://pangea.cloud/"
  version "1.2.1"

  on_macos do
    on_intel do
      url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.2.1/pangea-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3209163bc0f7721bfae6cde848c46176cc8b2969441df64f0ec25d83f441806b"

      def install
        bin.install "pangea"
        bash_completion.install "completions/pangea.bash" => "pangea"
        zsh_completion.install "completions/pangea.zsh" => "_pangea"
        fish_completion.install "completions/pangea.fish"
      end
    end
    on_arm do
      url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.2.1/pangea-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1906742c48bb2a998f21dea8fc9ac717c4298a5ee8ce3a739284a8676dab75ad"

      def install
        bin.install "pangea"
        bash_completion.install "completions/pangea.bash" => "pangea"
        zsh_completion.install "completions/pangea.zsh" => "_pangea"
        fish_completion.install "completions/pangea.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.2.1/pangea-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "1cc64bcbec62db934c3ac81a1279519c4cc116e588e3c16f5a4b5b545444d18b"

        def install
          bin.install "pangea"
          bash_completion.install "completions/pangea.bash" => "pangea"
          zsh_completion.install "completions/pangea.zsh" => "_pangea"
          fish_completion.install "completions/pangea.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.2.1/pangea-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "646ef824dcb74b8c5972ed1f0f64db3f848dc9f784331694de40b399a5887205"

        def install
          bin.install "pangea"
          bash_completion.install "completions/pangea.bash" => "pangea"
          zsh_completion.install "completions/pangea.zsh" => "_pangea"
          fish_completion.install "completions/pangea.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/pangea --version"
  end
end
