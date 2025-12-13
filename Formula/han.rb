# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.61.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.7/han-darwin-arm64"
      sha256 "b45b8e5ee52cf4535efcc005ddd99fe7dd30f556865365d31fba757bf0e8eb88"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.7/han-darwin-x64"
      sha256 "72c442d0b866ef4a4824bc2be67b6b30133efb1df652deba055c4cc01e95f9f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.7/han-linux-arm64"
      sha256 "4660f73f74f48dd664780c14d29204666182dbe71d5c043a683ada2d0a2e2aff"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.7/han-linux-x64"
      sha256 "8ff4b94457393cc622ec1bb472f37bac2f8e24f93164b47730b100b365c9ac0b"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
