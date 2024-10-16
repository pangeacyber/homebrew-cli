# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pangea < Formula
  desc ""
  homepage "https://pangea.cloud/"
  version "2.0.0"

  on_macos do
    on_intel do
      url "https://github.com/pangeacyber/pangea-cli/releases/download/v2.0.0/pangea-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0fa71ff53da0f147d3b1639804582ccf655c2ceeb49d5e12b95fc504076f3ca0"

      def install
        bin.install "pangea"
        bash_completion.install "completions/pangea.bash" => "pangea"
        zsh_completion.install "completions/pangea.zsh" => "_pangea"
        fish_completion.install "completions/pangea.fish"
      end
    end
    on_arm do
      url "https://github.com/pangeacyber/pangea-cli/releases/download/v2.0.0/pangea-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5974280db992c00484e59df6de77462715e360ba4c6dfb9046a961a0a3c083eb"

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
        url "https://github.com/pangeacyber/pangea-cli/releases/download/v2.0.0/pangea-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "8fdd752a204960101b805911f189b30414b6d12701bef043dadcd66edb493d1f"

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
        url "https://github.com/pangeacyber/pangea-cli/releases/download/v2.0.0/pangea-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "dbbbd48acafd7d6be1f7e0466206a3629a7a3c51da1f337d2239326c49c336d7"

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
