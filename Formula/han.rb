# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.20.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.2/han-darwin-arm64"
      sha256 "f20b7c5aba20105a3e9de5374d19acc450e99215d77a0fbf5745f05152fd66d0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.2/han-darwin-x64"
      sha256 "53555fcb8073b4bd20fe8ef89e5b44d1bc206246efbe3dc824f2850bd60d7031"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.2/han-linux-arm64"
      sha256 "380b0fa34dedd684250d92be19973e8d01853854e6fb7644a1409c54ccb2faf3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.2/han-linux-x64"
      sha256 "2beafd2aab832931747ecb480b915651da4632a2e1e28437a6f5ee5d37f4d010"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
