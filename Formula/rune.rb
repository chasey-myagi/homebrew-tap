# typed: false
# frozen_string_literal: true

class Rune < Formula
  desc "Define functions, get APIs + workflows + distributed execution"
  homepage "https://github.com/chasey-myagi/rune"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chasey-myagi/rune/releases/download/v1.1.0/rune-v1.1.0-darwin-arm64.tar.gz"
      sha256 "0c9ac50843f0870ebd9f2ba37b87b14be1b3747c84985db6d63dec94c8ff5923"
    end
    on_intel do
      url "https://github.com/chasey-myagi/rune/releases/download/v1.1.0/rune-v1.1.0-darwin-x86_64.tar.gz"
      sha256 "@@SHA256_DARWIN_X86_64@@"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chasey-myagi/rune/releases/download/v1.1.0/rune-v1.1.0-linux-arm64.tar.gz"
      sha256 "@@SHA256_LINUX_ARM64@@"
    end
    on_intel do
      url "https://github.com/chasey-myagi/rune/releases/download/v1.1.0/rune-v1.1.0-linux-x86_64.tar.gz"
      sha256 "@@SHA256_LINUX_X86_64@@"
    end
  end

  def install
    bin.install "rune"
    bin.install "rune-server"
  end

  def caveats
    <<~EOS
      Rune CLI and Runtime have been installed.

      Quick start:
        # Start the runtime server (HTTP :50060, gRPC :50070)
        rune start

        # Install Runesmith skill for Claude Code
        rune smith init --user

      Configuration via environment variables:
        RUNE_SERVER__HOST       (default: 0.0.0.0)
        RUNE_SERVER__HTTP_PORT  (default: 50060)
        RUNE_SERVER__GRPC_PORT  (default: 50070)

      Documentation: https://github.com/chasey-myagi/rune
    EOS
  end

  test do
    system "#{bin}/rune", "smith", "status"
  end
end
