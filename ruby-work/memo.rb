=begin
memoアプリの仕様
・メモを入力することができる
・確認モードと追加モードを切り替えられる
・メモはタイトルと内容からなる
・メモは複数追加することができる
・プログラムは止めるまで永久に動く

必要な知識は？
・入力⇒ターミナルからの入力の方法
・モードと切り替え⇒条件分岐
・タイトルと内容⇒ハッシュでまとめる
・複数追加⇒配列の知識がいる
・永久に動く⇒繰り返しの知識がいる

--
gets
readlines
--
=end

# puts "入力してください"
# a = gets
# puts "入力された文字は..."
# puts a

#memoアプリstart

#memos = [{"タイトル"=>"タイトル1","本文"=>"本文2"},{"タイトル"=>"タイトル2","本文"=>"本文2"}]
    #memos = [{"タイトル"=>"","本文" => ""}]
memos = []
memo_index = 0
    # memo = {"タイトル"=>"未設定","本文"=>"未設定"}

def make_memo(memo_index)
    puts "【メモを追加モードを選択しました】"
    tmp_add_hash = {}
        #puts "1つめのメモのタイトルを入力してください"
    print "#{memo_index}番目のタイトルを入力してください → "
    tmp_title =  gets.chomp
    tmp_add_hash.store("タイトル",tmp_title)
        #memos[memo_index]["タイトル"] = gets.chomp #入力の末尾の改行を削除
        #puts "1つめのメモの本文を入力してください"
    print "#{memo_index}番目の本文を入力してください → "
    tmp_content = gets.chomp    
    tmp_add_hash.store("本文",tmp_content)
    memo = tmp_add_hash
        #memos[memo_index]["本文"] = gets.chomp
end

def show_memos(memos)
    puts "【メモ表示モードを選択しました】"
        # puts memos[0]["タイトル"]+":"+memos[0]["本文"]
        # puts memos[1]["タイトル"]+":"+memos[1]["本文"]
    memos.each do |memo|
        puts "#{memo["タイトル"]}:#{memo["本文"]}"
    end
        #puts "" #改行をいれる処理
end

if __FILE__ == $0
    while true do
        puts "【Select Mode】"
        puts "  【add】メモを追加する"
        puts "  【show】メモを表示する"
        print "  input 'add' or 'show' → "
        mode = gets.chomp
        
        if mode == "add" then
            #addモード
            add_continue = true
            while add_continue do
                memos.push(make_memo(memo_index))
                memo_index += 1
                
                puts "【Keep adding?】"
                print "  input 'y' or 'n'  → "
                in_add = gets.chomp
                if in_add == "n" then
                    add_continue = false
                end
            end
        elsif mode == "show" then
        #showモード
            puts "====================="
            show_memos(memos)
            puts "====================="
        else
            #その他モード
            puts "out of Assumption"
            break
        end
    end
    #--memo アプリend
end



# nums = [1,2,3,4]
# nums.each do |num|
#     puts num
# end

=begin
memos = []
make_memo_hash = {}

#showモード
def show_memos(memos)
    memos.each do |memo|
        puts memo
    end
end
#addモード


while puts "【モードを選択】"
    mode = gets
    if mode == "show"
        show_memos(memos)
    elsif mode == "add"
        memos.push(make_memo_hash)
    else
        error
    end
end
=end