#Takes string containing parentheses and sees if they properly close.
#E.g. ")(hi)()(())" => False, "(((ok)this)works())" => True
def valid_parenth(string)
  string.tr!('^()', '')
  n = (string.length / 2)

  n.times do
    string.slice!("()")
  end
  
  string.length > 0 ? false : true
end