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
      sha256 "78d51c080f568677bc86323313ec9e6fda46c98e55017ab215e79a6412f4b694"

      def install
        bin.install "pangea"
        bash_completion.install "completions/pangea.bash" => "pangea"
        zsh_completion.install "completions/pangea.zsh" => "_pangea"
        fish_completion.install "completions/pangea.fish"
      end
    end
    on_arm do
      url "https://github.com/pangeacyber/pangea-cli/releases/download/v2.0.0/pangea-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9f9f8a3cfe2d2141d551d950f3ce715a008946ddbb23b7a24461897225ebceaf"

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
        sha256 "8f48af9a1437039a14a6b55a5ee2d7b34532c7c237ffe9472e34b70ac429e65c"

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
        sha256 "9a180c7758e85337b0b147d1c3bfed8ad3528a4cc4dee598bbd8bec66a13aabd"

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
