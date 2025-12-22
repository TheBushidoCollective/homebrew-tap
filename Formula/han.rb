# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "2.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.3/han-darwin-arm64"
      sha256 "e014394e4d28d4dca83e822b246acd05d157241c5186789a5da80a34a78bdd43"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.3/han-darwin-x64"
      sha256 "12d866e2e1f44db26c6505d3641ba3b1bdce0657c7414c6435269f8843246fee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.3/han-linux-arm64"
      sha256 "89c768f72c6b9c145c84c21920858b3c95be46f7845cd5e7673adbc56465f10c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.3/han-linux-x64"
      sha256 "6065acb8c55e81dafbfd59bb45ca0f409363820bc21a8410b1e03bd0ee163437"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
