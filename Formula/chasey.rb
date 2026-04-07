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
      sha256 "6cb052bebc755e68158779142015ff3fc429c24fb6bedafd9e23c601e1de38c4"
    end
    on_intel do
      url "https://github.com/chasey-myagi/chasey-infra/releases/download/cli-v0.1.0/chasey-v0.1.0-darwin-amd64.tar.gz"
      sha256 "9abc96cdc22a8946dcc88b28ef8bdee5e3f55ea972709d02f8895a369793ecad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chasey-myagi/chasey-infra/releases/download/cli-v0.1.0/chasey-v0.1.0-linux-arm64.tar.gz"
      sha256 "9c93f86d2d1ba5a20141bed14db022251d03e83d1484640dc099e828f82cbc2f"
    end
    on_intel do
      url "https://github.com/chasey-myagi/chasey-infra/releases/download/cli-v0.1.0/chasey-v0.1.0-linux-amd64.tar.gz"
      sha256 "39dc8fd970b98f88d3366846e461f6baef42840430d5aeed9e0d899af964cd1a"
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
