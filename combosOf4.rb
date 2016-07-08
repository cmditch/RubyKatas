
#Every unique combination of four elements for any sized array of arrays.
o = []
a = [["A"], ["B"], ["C"], ["D"], ["E"], ["F"], ["G"], ["H"]]

a.each do |x|
  o << x
  a.each do |y|
    o << (x + y)
    a.each do |z|
      o << (z + x + y)
      a.each do |q| 
        o << (q + x + y + z)
      end
    end
  end
end

o.each {|x| x.sort_by! {|y| y }; x.uniq!}
o.uniq!

