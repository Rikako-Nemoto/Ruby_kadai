require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する) 3(終了する)"
input = gets.to_i

if input == 1
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  puts "「#{file_name}.csv」という名前のファイルを作成しました。"
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl＋Dを押します"

  CSV.open("#{file_name}.csv", "w") do |csv|
    STDIN.read.each_line do |line|
      csv << line.split
    end
  end
elsif input == 2
  puts "拡張子を除いたファイルを入力してください"
  
  file_name = gets.chomp
  data_list = CSV.read("#{file_name}.csv")
  puts data_list
  
  CSV.open("#{file_name}.csv", "a") do |csv|
    STDIN.read.each_line do |line|
      csv << line.split
    end
  end
else
  puts '終了します'
  exit
end