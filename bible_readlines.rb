#流れとしては、コマンドをhotkeyで実行して、（book）（chapter）（verse）の入力を促す。
#入力と合う行を探す→聖句をクリップボードにコピー
require 'win32/clipboard'

def prompt(*args)
  print(*args)
  gets.chomp
end

book = prompt 'Input book:'
chapter = prompt book,' chapter: '
verse = prompt book,' ',chapter,', verse: '
to = prompt 'from '+verse+' to...'
verse_num = verse.to_i
if to.empty? == false
  to_num = to.to_i
else
  to_num = verse_num
end

passage = book+"\t"+chapter+"\t"+verse
passages = passage+'-'+to

list = File.open('C:\Users\Ryo\IdeaProjects\bible\col_no.txt', 'r:UTF-8').readlines

line = list.find{|l| l.include?(passage)}
f_verse = list.index(line)
l_verse = f_verse + (to_num - verse_num)

verses = passage
verses += '-' + to if to.empty? == false
verses += "\n"
list[f_verse..l_verse].each do |ver|
  sp = ver.split("\t")
  verses += sp[3]
end

Win32::Clipboard.set_data(verses, Win32::Clipboard::UNICODETEXT)
puts Win32::Clipboard.data(Win32::Clipboard::UNICODETEXT)

sleep(3)