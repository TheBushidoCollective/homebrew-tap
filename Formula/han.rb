# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.42.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.1/han-darwin-arm64"
      sha256 "ad095428db805c7a1d2918d772a505339b4553d103bc656fd570d2f3e268f42e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.1/han-darwin-x64"
      sha256 "06b2dcf5b680fac1106f2621f1b5638281c9a59ba061574aa9f6ea19a3801240"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.1/han-linux-arm64"
      sha256 "6e6b4235750087a7f3445469aa760cba4d33091d8bedac10de14b27e1ca10434"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.1/han-linux-x64"
      sha256 "ffe003bf48b0d6e9c333229dcc8e593d30ec6ea0ff60231ebb49c38e437e2c30"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
