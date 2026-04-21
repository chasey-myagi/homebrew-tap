# typed: false
# frozen_string_literal: true

class Sage < Formula
  desc "Terminal-native AI coding agent — multi-provider, streaming, tool use"
  homepage "https://github.com/chasey-myagi/sage"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      5ba2e5ddbec69350c856436d8d04a62c835e0466da8e55e6207e885ef76044"
    end
    on_intel do
      a8d8a96ccda6cc02f47645a3d908dc872342fd455c11e05024d7f090f954741"
    end
  end

  on_linux do
    on_arm do
      Nf54a22db1d917aa7f5d24c2cf8cd72c07b26eb722b7e22e7eeb51bc43ae5f5"
    end
    on_intel do
      F97c9c5de82339d6776032f2170a0521ee20204fec0a4f2ea1172814c2635ac"
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
