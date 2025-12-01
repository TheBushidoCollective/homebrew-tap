# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.22.1/han-darwin-arm64"
      sha256 "6ff7ac333ee488c371cd8a1eec7eef659f3b6ed232999a2572451ccc5b017966"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.22.1/han-darwin-x64"
      sha256 "5d47a88e47c95c17fe2c7f249290b2d9c350fcd91d77b56bf73bf8b458437350"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.22.1/han-linux-arm64"
      sha256 "d901c31d36b5205e1b1ca6663e50a8eb826c959293d15ae12a204c5903ac9e79"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.22.1/han-linux-x64"
      sha256 "a081aaa27051f1fdea10ec2c07038329c38a20fde1af2581638e63f886f3634e"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
