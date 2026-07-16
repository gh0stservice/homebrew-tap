class Gh0stcli < Formula
  desc "Local gh0stcloud client and MCP adapter"
  homepage "https://gitlab.gh0stservice.com/gh0stlab/gh0stcli"
  version "0.1.4"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.4/gh0stcli_0.1.4_darwin_arm64.tar.gz"
      sha256 "65d3472215e1a356d33a7ae0d2332c2c1f82bf9c67bc944d080dba143b4bb789"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.4/gh0stcli_0.1.4_darwin_amd64.tar.gz"
      sha256 "c14248cdfc6ec54c3d4cee4ef941a2db254abb8172be9c674197fcc21440786e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.4/gh0stcli_0.1.4_linux_arm64.tar.gz"
      sha256 "c843f1df94fee74b041204110dfef812a14b77ed991cc77c70ea320dda3d2d5d"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.4/gh0stcli_0.1.4_linux_amd64.tar.gz"
      sha256 "3bc54319e6e154c18414f25c06f200c6ad333bb475ea35da405d1b16534101b2"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
