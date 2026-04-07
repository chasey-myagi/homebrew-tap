# typed: false
# frozen_string_literal: true

class Chasey < Formula
  desc "Personal infrastructure CLI — project standardization, dev machine setup"
  homepage "https://github.com/chasey-myagi/chasey-infra"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chasey-myagi/chasey-infra/releases/download/cli-v0.1.0/chasey-v0.1.0-darwin-arm64.tar.gz"
      sha256 "@@SHA256_DARWIN_ARM64@@"
    end
    on_intel do
      url "https://github.com/chasey-myagi/chasey-infra/releases/download/cli-v0.1.0/chasey-v0.1.0-darwin-amd64.tar.gz"
      sha256 "@@SHA256_DARWIN_AMD64@@"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chasey-myagi/chasey-infra/releases/download/cli-v0.1.0/chasey-v0.1.0-linux-arm64.tar.gz"
      sha256 "@@SHA256_LINUX_ARM64@@"
    end
    on_intel do
      url "https://github.com/chasey-myagi/chasey-infra/releases/download/cli-v0.1.0/chasey-v0.1.0-linux-amd64.tar.gz"
      sha256 "@@SHA256_LINUX_AMD64@@"
    end
  end

  def install
    bin.install "chasey"
  end

  def caveats
    <<~EOS
      Chasey CLI has been installed.

      Quick start:
        chasey doctor         # Check environment
        chasey init my-app    # Scaffold new project
        chasey apply          # Add standards to existing project
        chasey add caster --lang python --name my-caster  # Add Rune Caster

      Documentation: https://github.com/chasey-myagi/chasey-infra
    EOS
  end

  test do
    system "#{bin}/chasey", "doctor"
  end
end
