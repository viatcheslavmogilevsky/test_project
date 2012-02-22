#! /usr/bin/env ruby
# использование: ruby prog.rb [N]
# N - количество строк вывода

class String
  def separator(l,f)
    if l==f
      tail = "#{l}#{f}"
    else
      tail = "#{l} #{f}" # если цифры разные добавляем между ними разделитель
    end
    self << " " if self[-1] != tail[0]
    self << tail
  end
end

str = '1'
ARGV[0].to_i.times do
  arr = str.split # элементы этого массива: "111", "33", "4444" и т.п
  puts str.delete(' ') # показываем результирующую строку,но без разделителей
  str = ''
  arr.each do |elem|
    str.separator(elem.length.to_s,elem[0].chr)
  end
end




