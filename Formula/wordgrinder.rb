class Wordgrinder < Formula
  desc "Unicode-aware word processor that runs in a terminal"
  homepage "https://cowlark.com/wordgrinder"
  url "https://github.com/davidgiven/wordgrinder/archive/0.7.2.tar.gz"
  sha256 "4e1bc659403f98479fe8619655f901c8c03eb87743374548b4d20a41d31d1dff"
  head "https://github.com/davidgiven/wordgrinder"

  depends_on "lua"
  depends_on "ninja"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/wordgrinder", "--help"
  end
end
