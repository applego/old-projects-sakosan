# #puts (50+40+90+80+70)/5
# #どれがどの点数かわからない

# scores = [50,40,90,80,70,30,40,60,50,90,71]
# puts scores[9]

# puts (scores[0] + scores[1] + scores[2] + scores[3] + scores[4] + scores[5] + scores[6] + scores[7] + scores[8] + scores[9])

# sum = 0
# scores.each do |score|
#     sum += score
# end

# puts sum/11

# names = ["田中さん","山梨さん","鈴木さん"]
# messages = ["こんにちは","こんばんは","おやすみなさい"]

# messages.each do |message|
#     names.each do |name|
#         puts name + message
#     end
# end

#おみくじアプリ
puts "おみくじアプリ-------------------"
omikuji = ["大吉","中吉","小吉"]
puts omikuji.sample  #ランダムに選択

# japanese = 50
# math = 40
# science = 90
# english = 80
# information = 70

# scores = [50,40,90,80,70]
# puts (scores[0]+scores[1]+scores[2]+scores[3]+scores[4])/5

#上記だと数字が何を表しているかわかりにくい
puts "ハッシュを使用した平均点の算出-------------------"
scores_hash = {"japanese"=>50,"math"=>40,"science"=>90,"english"=>80,"information"=>70}
puts (scores_hash["japanese"]+scores_hash["math"]+scores_hash["science"]+scores_hash["english"]+scores_hash["information"])/5

puts "eachを使ってみる-------------------"
user = {"id"=>"yukisako","age"=>21,"blog"=>"yukisako.xyz"}
user.each do |u|
    puts u
end

puts "メソッドについて理解しよう-------------------"

def greet
    puts "おはよう"
    puts "こんにちは"
    puts "こんばんは"
end

#二つの平均を返す
def average
    (3+5)/2
end


puts average

def average2(a,b)
    (a+b)/2
end

puts average2(7,9)
puts average2(1,2)
puts average2(3,4)

def average3(a,b,c)
    (a+b+c)/3
end

puts average3(1,2,3)
puts average3(2,3,4)

#Rubyで定義されているメソッドを知ろう
puts "Rubyで定義されているメソッドを知ろう-------------------"

omikuji = ["大吉","中吉","小吉","凶"]

#puts omikuji.sample #samleが元から用意されたメソッド

puts omikuji.length

p omikuji

omikuji.push("末吉")

puts omikuji

puts omikuji[4]

p omikuji

a = 2.3
puts a

puts a.floor
puts a.ceil
puts a.round

user_id = "yukisako"
user_id2 = "YukiSako"
puts user_id
puts user_id.upcase
puts user_id2.downcase

name = "yukisako"
puts name.upcase #!をつけると破壊的メソッドになる（保存されている変数の中身自体を変えてしまう）
puts name

# push
# sample 
# length
# floor
# ceil
# downcase
# upcase

puts "条件分岐について理解しよう"

a = 90
b = 90

# if a > b
#     puts "a君の方が高得点です"
# elsif b > a
#     puts "b君の方が高得点です"
# else
#     puts "a君もb君も同じ点数です"
# end

# 100.times do |i|
# puts i
# end

omikuji = ["大吉","中吉","小吉"]

# omikuji.each do |i|
#     puts i
# end

# 5.times do
#     puts omikuji.sample
# end

result = omikuji.sample
while(result != "大吉")
    puts result
    result = omikuji.sample
end
puts result

# a = 0
# while(a<100)
#     puts a
#     a = a + 10
# end


puts "Rubyの総まとめ"

c = [60,70,80]
puts c[2]

d = {"japanese"=>60,"math"=>70,"info"=>80}
puts d["japanese"]

d.each do |i|
    puts i
end

5.times do 
    puts "Hello"
end

a = 1.00000001
while(a<1000)
    puts a
    a *= a
end

#paramsとハッシュの関係性
# d = {"japanese" => 60,"math" => 70,"science" => 80}
# puts d["math"]

d = {"japanese" => {"kanji" => 30, "kobun" => 10, "kanbun" => 20}}
puts d["japanese"]["kobun"] #ハッシュの中のハッシュの値を取得する

params = {"form_test" => {"age" => 22,"country" => "japanese"}}

puts params["form_test"]["country"]
