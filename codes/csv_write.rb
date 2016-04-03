require 'csv'
def create_hash 
  hash=Hash.new('')
  array=Array.new
  hash= { 'sn' => 1, 'first_name' => 'feline',
    'middle_name' => 'asinine','last_name' => 'asinine', 'dob' =>'12/12/1222' }

    array<<hash

    hash= { 'sn' => 2, 'first_name' => 'bishwa',
     'middle_name' => '','last_name' => 'temp', 'dob' =>'11/11/1212' }

     array<<hash

     hash= { 'sn' => 3, 'first_name' => 'bishwa',
       'middle_name' => '','last_name' => 'temp', 'dob' =>'11/11/1212' }

     array<<hash

     hash= { 'sn' => 4, 'first_name' => 'bishwa',
       'middle_name' => '','last_name' => 'temp', 'dob' =>'11/11/1212' }
     array<<hash
  end

#CSV.open("data.csv", "wb") {|csv| create_hash.to_a.each {|elem| csv << elem.key} }
CSV.open("data.csv", "w",write_headers:true,headers:create_hash.first.keys) do |csv|

    #.select {|father| father["age"] > 35 }
    create_hash.each do |hash|
      csv << hash.values
    end
  end