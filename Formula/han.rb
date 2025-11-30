# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.0/han-darwin-arm64"
      sha256 "9813428d6f65dd63f0d8fb9f439a72a991a03e9c752977231e83df7e38e4933b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.0/han-darwin-x64"
      sha256 "a086cf7b9b92e1437d64565d43150660d51e410b8c89cb669d3b8dd4e23d9d46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.0/han-linux-arm64"
      sha256 "b10426e90886737568a8eebd3270760ee622478f277e778df9635f63dabe42f2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.0/han-linux-x64"
      sha256 "4955074b901c1ca9f96579f30f047c801f2734a245370caa82d6dd009be1d65e"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
