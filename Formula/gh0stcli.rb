class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.16.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.0/gh0stcli_0.16.0_darwin_arm64.tar.gz"
      sha256 "ea1ad243c5629e7c0abd21853ddcf2d39b5a8f1f1811901320a2bb2c8fa5fe61"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.0/gh0stcli_0.16.0_darwin_amd64.tar.gz"
      sha256 "8e9d322207f4153507879ed60d3714cb29cddb8381f367c5f19493fe53006713"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.0/gh0stcli_0.16.0_linux_arm64.tar.gz"
      sha256 "cc346b437a8ca91d28ebe394563963c9345d70e7fe2f8b86e0e6e115d903202c"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.0/gh0stcli_0.16.0_linux_amd64.tar.gz"
      sha256 "008717238a399a3e4f5d7a39fa788d02811886e72514a0d36f63e61e539063d1"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
