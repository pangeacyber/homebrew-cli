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
      sha256 "150341ac177b8ac094dd5fb4cccbbd2fdaffe5019a211d6d3d89095c40a4f2ae"

      def install
        bin.install "pangea"
        bash_completion.install "completions/pangea.bash" => "pangea"
        zsh_completion.install "completions/pangea.zsh" => "_pangea"
        fish_completion.install "completions/pangea.fish"
      end
    end
    on_arm do
      url "https://github.com/pangeacyber/pangea-cli/releases/download/v1.2.1/pangea-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f7677967bd9588d4bec8b2e204dc06e81c1dd49ca4438efe17498a6f2ceea37d"

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
        sha256 "4e6d0f12dc1cb0fe74c94e452c56e4876528d61adf3647cf9189f0a070ff27bf"

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
        sha256 "72a56027a8c6717e2f315c0ae2c5f4015ac0b6bdc592b8299f09bdb28fb4d29f"

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
