#!/usr/bin/env ruby

require 'clipboard'
require './dict.rb'

#bpaste.command

#書の入力を促す
book_input = prompt 'Input book:'

#dict.rbに従い、入力を変換
book = adjust(book_input)

#章の入力を促す
chapter = prompt book,' chapter: '

#最初の節の入力を促す
first_verse_input = prompt book,' ',chapter,', verse: '

#コピーしたい最後の節を入力させる
last_verse_input = prompt 'from '+first_verse_input+' to...'

#Integerにする
first_verse_num = first_verse_input.to_i

#もし最後の節の入力の指定がなかった場合、一節のみ指定
if last_verse_input.empty? == false
  last_verse_num = last_verse_input.to_i
else
  last_verse_num = first_verse_num
end

passage = book+"\t"+chapter+"\t"+first_verse_input

list = File.open('col_no.txt', 'r:UTF-8').readlines

#聖句の検索 passageを含む行(line)を探す
line = list.find{|l| l.include?(passage)}

#lineが聖書全体の何行目かを調べる
f_verse = list.index(line)

begin
  #最初の節と最後の節の番号の差をとって、最後の節が聖書全体で何行目かを調べる
  l_verse = f_verse + (last_verse_num - first_verse_num)

  #書、章、最初の節番号を表示
  verses = translate(book) +' '+chapter+':'+first_verse_input

  # 最後の節番号が空欄でなければ、"- 節番号"を追加
  verses += '-' + last_verse_input if last_verse_input.empty? == false

  verses += "\n"

  #書 tab 章 tab 節 tab 聖句となっているため、行をtabで分割し、配列に格納。4つ目を取り出し、足していく。
  list[f_verse..l_verse].each do |ver|
    sp = ver.split("\t")
    verses += sp[3]
  end

  Clipboard.copy(verses)
  puts verses

rescue
  puts "聖句が見つかりませんでした。存在する書物、章、節か確認してください"
  sleep(2)
end

sleep(2)


