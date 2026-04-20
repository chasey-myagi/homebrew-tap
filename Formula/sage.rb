# typed: false
# frozen_string_literal: true

class Sage < Formula
  desc "Terminal-native AI coding agent — multi-provider, streaming, tool use"
  homepage "https://github.com/chasey-myagi/sage"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chasey-myagi/sage/releases/download/v0.1.2/sage-v0.1.2-darwin-arm64.tar.gz"
      sha256 "3f40230fc41cd1be9f289e52d2d26339a4f9bb517f29ed0423173acf136f3f30"
    end
    on_intel do
      url "https://github.com/chasey-myagi/sage/releases/download/v0.1.2/sage-v0.1.2-darwin-x86_64.tar.gz"
      sha256 "7bbf6c124b013aa2759c0b1b42b9b6dd3589cb68644a810fee72a1feeb006b7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chasey-myagi/sage/releases/download/v0.1.2/sage-v0.1.2-linux-arm64.tar.gz"
      sha256 "e4f55ee868cbdf77db671ef3c68afd167e6fa0264db23e9515baaf7235f0e0e8"
    end
    on_intel do
      url "https://github.com/chasey-myagi/sage/releases/download/v0.1.2/sage-v0.1.2-linux-x86_64.tar.gz"
      sha256 "0551a560d2e2fa799505fc0b0d1b294b58f457a4578768c990509fd9d867660a"
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
