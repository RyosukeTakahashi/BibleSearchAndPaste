#book, chapter, verseの入力を促す。
#入力と合う行を探す→聖句をクリップボードにコピー
require 'win32/clipboard'

def prompt(*args)
  print(*args)
  gets.chomp
end

#書の入力を促す
book = prompt 'Input book:'
#章の入力を促す
chapter = prompt book,' chapter: '
#最初の節の入力を促す
verse = prompt book,' ',chapter,', verse: '
#コピーしたい最後の節を入力させる
to = prompt 'from '+verse+' to...'
#Integerにする
verse_num = verse.to_i
#もし最後の節の入力の指定がなかった場合、一節のみコピーする
if to.empty? == false
  to_num = to.to_i
else
  to_num = verse_num
end

passage = book+"\t"+chapter+"\t"+verse
passages = passage+'-'+to

list = File.open('C:\Users\Ryo\IdeaProjects\bible\col_no.txt', 'r:UTF-8').readlines

#聖句の検索 passageを含む行(line)を探す
line = list.find{|l| l.include?(passage)}
#lineが聖書全体の何行目かを調べる
f_verse = list.index(line)
#最初の節と最後の節の番号の差をとって、最後の節が聖書全体で何行目かを調べる
l_verse = f_verse + (to_num - verse_num)

#書、章、最初の節番号を表示
verses = passage
# 最後の節番号が空欄でなければ、"- 節番号"を追加
verses += '-' + to if to.empty? == false
verses += "\n"

#書 tab 章 tab 節 tab 聖句となっているため、行をtabで分割し、配列に格納。4つ目を取り出す。
list[f_verse..l_verse].each do |ver|
  sp = ver.split("\t")
  verses += sp[3]
end

#出力をコピーする
Win32::Clipboard.set_data(verses, Win32::Clipboard::UNICODETEXT)
puts Win32::Clipboard.data(Win32::Clipboard::UNICODETEXT)

sleep(3)
