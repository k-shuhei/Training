GitHub-pull-rq--Ruby-1-3-
=========================
2014/04/17

GitHubのpull requestとRubyのさわり

#GitHub

`.md` githubのファイルはmarkdown形式となっている。マークダウンを使ったり,GitHubの設定でプログラム言語にあった表記で書ける。


##pull request
GitHubでミスを見つけた時に修正して相手に報告出来る機能。

その際、branchを使うと便利でミスを減らせる。branchは平行世界のようなもので、元ファイルの世界線をmasterとすると、baranchはmaster以外の任意の世界線となる。branchに移動した後に、ファイルを編集してもmasterの同名のファイルは変更されることはない。mergeして初めてbranchの修正内容がmasterに適用される。branchは複数(数は不明)作ることができ、バージョン管理等に使われている。

##teraturmを用いてpull request
自分のGitHubのメールアドレスと名前を入力。
`git config --global user.email " @ "`,`git config user.name " "`

相手のリポジトリをcloneして自分のところにコピー(?)する。(SSH経由のアドレス)
`git clone []`

修正したいmdファイルのあるディレクトリ上で、ブランチをきる（作る）。ブランチの名前はなんでもいい。
`git checkout -b [ブランチ名]`

新しいブランチに移った状態でvimを用いて.mdファイルを編集する。

`git add [].md`で更新。

`git commit -m [].md`でコミット（一言コメント）を書きこむ。

`git push`でアップロード(？)。
あるいは、`git push origin [ブランチ名]`　originはホスト先(?)変更できる。

GitHubの修正先のリポジトリにcompare & pull

requestというバナーがあるのでそこから修正内容を相手に送ることが出来る。

以上


#Rubyについて（第1章）、第2章

 - 詳しくは[Rubyがミニツク](http://www.minituku.net/)参照
 
Rubyは.rbファイルをviやvimで編集して、`& ruby [].rb`で実行する。実行ファイルを作るのがめんどくさい時は、`& ruby -e (プログラム直接記述)`とするか、`& irb`で直に打ち込んで実行することが出来る。

##覚えた方がいいこと
 - print  文字列を表示。
 
 - puts   文字列を表示するが、文字の後に改行が挿入される。分割時は分割ごとに改行

 - if [  ] then   条件文に合っていると命令を通す。

 - elsif          if文の中に入る条件文。上のif文が偽であり、現在のelsifが真である場合は命令を通す。

 - else           if文とそのif文中のelsifのどれに対しても偽である場合はelse文の命令が与えられる。

```ruby
def [メソッド名]
[]文
end
```
メソッドを定義する。メソッド名はアルファベット小文字かアンダーバーのみである。文は何行でも良い。

###その他

Rubyにおいては、数字の0は真である。

偽を表す文字列はfalseとnilの2つだけである。

Cの`else if`とRubyの`elsif`は同じであるが、書き方が違うので注意。

変数の先頭には数字やアルファベットの大文字は使えない。

アルファベットの大文字を使うときは定数の扱いとなる。

putsやprintの文字を囲む際、`” ”`だと内部の特殊文字(\nなど)が機能するが、`’ ’`では特殊文字が機能せずにそのまま表示される。

