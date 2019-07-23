def average(n1,n2)

( (n1*1.0) +n2)/2


end

def average_array(arr)
sum=0
    arr.each do |el|
        sum=sum+el 
    end
    sum1=sum*1.0

     avg=sum1 / arr.length

end


def repeat(str, num)
    new_str=""
    num.times do
        new_str = new_str+str
    end
  new_str
end


def yell(str)
   return str.upcase+"!"


end


def alternating_case (str)
    arr=str.split(" ")
    arr.each_with_index do |part , i|
        if i%2==0
           arr[i]=part.upcase
        
        else
        arr[i]=part.downcase
        end
    end
   new_str=arr.join(" ")    
      

end
