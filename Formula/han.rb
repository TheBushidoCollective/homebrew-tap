# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.61.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.2/han-darwin-arm64"
      sha256 "bd8e341c6558fb6231402c59de676a6041176524ca18366fa43828089ea44731"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.2/han-darwin-x64"
      sha256 "f3cdb4ae22680f8bd233ef768ba1777323f2bf7ed7796c2a272756c9a68d041c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.2/han-linux-arm64"
      sha256 "d89b9aacf9c647ea5d4ccbdd538104cd49eb937bc79dd0036f46fab708fba581"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.2/han-linux-x64"
      sha256 "f70ce8dd397ef920094c4a2d16841ea7b00c359b007daddd57410fb2a124fbcd"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
