# This file was generated by GoReleaser. DO NOT EDIT.
class Gsh < Formula
  desc "A command line tool to use GSH"
  homepage "https://github.com/globocom/gsh"
  url "https://github.com/globocom/gsh/archive/v0.1.2.tar.gz"
  version "0.1.2"
  sha256 "76ae796318cca8d5a909d8a4b5fc6ccef523b3c791f1ffab70a6e5bbaf43d6c8"
  
  depends_on "openssh"
  depends_on "go"
  depends_on "dep"

  def install
    ENV["GOPATH"] = buildpath
    system "dep", "ensure"
    system "go", "build", "-o", "gsh", "cli/main.go"
    bin.install "gsh"
  end
end