class Array

  def circularly_sorted?
    string = self.sort().join('')
    string += string
    if string.include? self.join('')
    	true
    else
      false
    end
  end

end
