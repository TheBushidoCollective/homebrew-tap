# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.4/han-darwin-arm64"
      sha256 "950dd789d06098390bab717c315d4bf50f1687ad77dff648dd1b36de192a6257"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.4/han-darwin-x64"
      sha256 "32a471958fe43adfb7e0741c28d45e2d356d6dced4cb43662c50a76f7ebad447"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.4/han-linux-arm64"
      sha256 "409c28fe4bb914053a419f5f75b1f569ecc2059c7953c8eacee8b3de7e179197"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.4/han-linux-x64"
      sha256 "a5d0fe65d2893fdd6203a792071c4b7d17757fc46e616f9f91b707f48b7ac325"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
