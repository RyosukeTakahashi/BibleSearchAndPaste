##概要

聖書（口語訳）の指定した聖句を簡単にコピペするための、rubyスクリプト。

##使用条件

* mac
* ruby 1.9 以上

##準備
1. 以下のコマンドでgem clipboardというgemをインストールしておくこと。
`gem install clipboard`
2. bpaste.command の１行目を編集する
`cd /Users/Ryo/Documents/GitHubWorks/BibleSearchAndPaste`
のディレクトリ部分を、ファイルを置いたディレクトリ先に変更して保存する。

##使い方

1. bpaste.commandをダブルクリック
2. *Input book:* で英語の表記での最初の３文字を入力し、Enter。（マタイによる福音書なら、'mat'）
3. *chapter:* 章番号を指定して、Enter（９章なら '9' ）
4. *verse:* 節を指定する。(１２節なら'12')
5. *to:* １２節から１５節など、複数節を指定したい場合、最後の節を指定。一つの節なら、何も入力をせずEnter
6. クリップボードに聖句がコピーされます。好きなところに貼り付けできます。
