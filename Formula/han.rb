# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.7/han-darwin-arm64"
      sha256 "7cf881c5451ecda5b54a63ca4a5cd110917b508050f9299eeecb65c55744b58b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.7/han-darwin-x64"
      sha256 "592d2b69af0bb378c3364917fd08262a1f27b96f1e6f5c7ad7fc1df5826d6032"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.7/han-linux-arm64"
      sha256 "54424b54eec527dfc1741adcb28d70aab1a9f28c198625440152e92b7ca392b0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.7/han-linux-x64"
      sha256 "7e248bf26a63fbbcf9e90aa34651c647e8c729abe643cd893089c13c535b247c"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
