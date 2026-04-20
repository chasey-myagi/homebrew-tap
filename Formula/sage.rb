# typed: false
# frozen_string_literal: true

class Sage < Formula
  desc "Terminal-native AI coding agent — multi-provider, streaming, tool use"
  homepage "https://github.com/chasey-myagi/sage"
  version "@@VERSION@@"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chasey-myagi/sage/releases/download/v@@VERSION@@/sage-v@@VERSION@@-darwin-arm64.tar.gz"
      sha256 "@@SHA256_DARWIN_ARM64@@"
    end
    on_intel do
      url "https://github.com/chasey-myagi/sage/releases/download/v@@VERSION@@/sage-v@@VERSION@@-darwin-x86_64.tar.gz"
      sha256 "@@SHA256_DARWIN_X86_64@@"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chasey-myagi/sage/releases/download/v@@VERSION@@/sage-v@@VERSION@@-linux-arm64.tar.gz"
      sha256 "@@SHA256_LINUX_ARM64@@"
    end
    on_intel do
      url "https://github.com/chasey-myagi/sage/releases/download/v@@VERSION@@/sage-v@@VERSION@@-linux-x86_64.tar.gz"
      sha256 "@@SHA256_LINUX_X86_64@@"
    end
  end

  def install
    bin.install "sage"
  end

  def caveats
    <<~EOS
      Sage is a terminal-native AI coding agent.

      Quick start:
        # With Anthropic
        export ANTHROPIC_API_KEY=sk-ant-...
        sage

        # With Qwen
        export DASHSCOPE_API_KEY=sk-...
        sage --provider qwen --model qwen3-235b-a22b

      Documentation: https://github.com/chasey-myagi/sage
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sage --version")
  end
end
