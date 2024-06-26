def is_valid(s)
  return false if s.match?(/[^\[\](){}]/)
  return true if s.empty?
  
  stack = []
  s.each_char do |c|
      case c
      when '(', '{', '['
          stack.push(c)
      when ')'
          return false if stack.pop() != '('
      when '}'
          return false if stack.pop() != '{'
      when ']'
          return false if stack.pop() != '['
      end
  end
  return stack.empty?
end
